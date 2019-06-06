code System

  type
    -- The following record has a fixed format:
    CATCH_RECORD = record
                     next: ptr to CATCH_RECORD
                     errorID: ptr to char    -- Null terminated string
                     catchCodePtr: int       -- Address of the code
                     oldFP: int
                     oldSP: int
                     fileName: ptr to char   -- Null terminated string
                     lineNumber: int
                   endRecord

    -- The following record has a fixed format:
    DISPATCH_TABLE = record
                       classDescriptor: ptr to CLASS_DESCRIPTOR
                       firstMethodPtr: int    -- Address of code
                     endRecord

    -- The following record has a fixed format:
    CLASS_DESCRIPTOR = record
                         magic: int                -- Should be 0x434C4153 == 'CLAS'
                         myName: ptr to char       -- Null terminated string
                         fileName: ptr to char     -- Null terminated string
                         lineNumber: int
                         sizeInBytes: int
                         firstSuperPtr: ptr to DISPATCH_TABLE
                       endRecord

    -- The following record has a fixed format:
    INTERFACE_DESCRIPTOR = record
                             magic: int                -- Should be 0x494E5446 == 'INTF'
                             myName: ptr to char       -- Null terminated string
                             fileName: ptr to char     -- Null terminated string
                             lineNumber: int
                             firstInterfacePtr: ptr to INTERFACE_DESCRIPTOR
                           endRecord

    -- The following record has a fixed format:
    OBJECT_RECORD = record
                      dispatchTable: ptr to DISPATCH_TABLE
                      firstField: int
                    endRecord

-----------------------------  nl  ---------------------------------

  function nl ()
      printChar ('\n')
    endFunction

---------------------------  printNullTerminatedString  -------------------------------

  function printNullTerminatedString (p: ptr to char)
    -- This function is passed a pointer to a sequence of
    -- characters, followed by '\0'.  It prints them.
    var ch: char
      while true
        ch = *p
        if ch == '\0'
          return
        endIf
        printChar (ch)
        p = p + 1
      endWhile
    endFunction

-----------------------------  KPLSystemError  ---------------------------------

  function KPLSystemError (message: ptr to array of char)
    -- Come here when a fatal error occurs.  Print a message and terminate
    -- the KPL program.  There will be no return from this function.
    -- NOTE: This function is not aware of threads; it is better to use FatalError
    -- (from the Thread package) if possible.
      print ("\n\nFATAL KPL RUNTIME ERROR: ")
      print (message)
      nl ()
      RuntimeExit ()
    endFunction

-----------------------------  KPLIsKindOf  ---------------------------------

  function KPLIsKindOf (objPtr: ptr to Object, typeDesc: ptr to int) returns int
    -- There will be an upcall from the runtime system to this function, which
    -- will evaluate the "isKindOf" relation.  This routine determines whether
    -- the object pointed to satisfies the "isKindOf" relation, i.e., whether it
    -- is an instance of the given type, or of one of its super-classes or super-
    -- interfaces.  It returns either 0 (for FALSE) or 1 (for TRUE).
      var
        dispTable: ptr to DISPATCH_TABLE
        classDesc: ptr to CLASS_DESCRIPTOR
        next: ptr to ptr to void
   
      -- We should never be passed a NULL pointer, but check anyway.
      if objPtr == null
        KPLSystemError ("WITHIN KPLIsKindOf: objPtr is NULL")
      endIf

      -- If the object is uninitialized return false.
      dispTable = (objPtr asPtrTo OBJECT_RECORD).dispatchTable
      if dispTable == null
        return 0
      endIf

      classDesc = dispTable.classDescriptor

      -- Make sure the magic number is what we expect it to be.
      if classDesc.magic != 0x434C4153   -- 'CLAS'
        KPLSystemError ("WITHIN KPLIsKindOf: Bad Magic Number")
      endIf

      -- Run through all supers.  (Each class is a super of itself.)
      next = & classDesc.firstSuperPtr
      while true
        if *next == null
          return 0
        elseIf *next == typeDesc
          return 1
        endIf
        next = next + 4
      endWhile
    endFunction

------------------------------------  THE HEAP  ---------------------------------

  -- The following functions (provided below) are used to implement the heap.
  --    KPLMemoryInitialize
  --    KPLMemoryAlloc
  --    KPLMemoryFree
  -- The runtime system will execute calls to these routines whenever:
  --    Whenever a TRY statement is executed
  --    Whenever an ALLOC statement is executed
  --    Whenever a FREE statement is executed
  --
  -- The heap implementation provided here is overly simple: Blocks of memory
  -- are allocated sequentially and any attempt to "free" memory is ignored.
  --
  const
    HEAP_SIZE = 20000
  var
    memoryArea: array [HEAP_SIZE] of char
    nextCharToUse: int = 0
    alreadyInAlloc: bool = false          -- Used to detect re-entrance

-----------------------------  KPLMemoryInitialize  ---------------------------------

  function KPLMemoryInitialize ()
    -- Initialize the array count without initializing the data.
    var p: ptr to int = (& memoryArea) asPtrTo int
      *p = HEAP_SIZE
    endFunction

-----------------------------  KPLMemoryAlloc  ---------------------------------

  function KPLMemoryAlloc (byteCount: int) returns ptr to char
    -- This routine is called to allocate memory from the heap.
    -- This heap implementation is trivial: It allocates space
    -- sequentially, until there is no more.  When space is exhausted,
    -- we throw an error.
    --
    -- NOTE: THIS FUNCTION IS ***NOT*** RE-ENTRANT!!!  The caller must
    --       ensure that it will only be called from one thread.  (If it might
    --       be called from different threads, the caller must ensure that it
    --       is protected with semaphores, locks, etc. from be invoked while
    --       it is already active!!!
    --
    var i: int
        p: ptr to char

      -- The following test is NOT correct!!!  But it may
      -- detect some cases of re-entrance...
      if alreadyInAlloc
        KPLSystemError ("WITHIN KPLMemoryAlloc: Reentered")
      endIf
      alreadyInAlloc = true

      i = nextCharToUse
      if byteCount <= 0
        print ("\n\nBad byteCount = ")
        printInt (byteCount)
        KPLSystemError ("WITHIN KPLMemoryAlloc: byte count is not positive")
      endIf

      -- Add 4 bytes to the byte count, for storing a hidden byte count.
      byteCount = byteCount + 4

      -- Round up to a multiple of 8.
      if byteCount % 8 > 0
        byteCount = (byteCount / 8 + 1) * 8
      endIf

      -- Uncomment the following to see when "HEAP Alloc" occurs
      /*
      print ("\n+++++ KPLMemoryAlloc   byteCount: ")
      printInt (byteCount)
      print (", remaining: ")
      printInt (HEAP_SIZE-(nextCharToUse + byteCount))
      print (", returns: ")
      printHex ((& (memoryArea [i])) asInteger + 4)
      print (" +++++\n")
      */

      nextCharToUse = nextCharToUse + byteCount
      if nextCharToUse > HEAP_SIZE
        KPLSystemError ("WITHIN KPLMemoryAlloc: Out of memory")
      endIf
      p = & (memoryArea [i])
      *(p asPtrTo int) = byteCount

      alreadyInAlloc = false

      return p + 4

    endFunction

-----------------------------  KPLMemoryFree  ---------------------------------

  function KPLMemoryFree (p: ptr to char)
    -- This routine is called to free memory in the heap.  It is passed a
    -- pointer to a block of memory previously allocated in a call to "alloc".
    --
    -- Currently, this routine is a nop.
    --
      --print ("\n+++++ KPLMemoryFree called... ptr: ")
      --printHex (p asInteger)
      --print (" +++++\n")
    endFunction

-----------------------------  KPLUncaughtThrow  ---------------------------------

  function KPLUncaughtThrow (errorID: ptr to char, line: int, rPtr: int)
    -- Whenever an error is thrown but not caught, there will be an upcall from the
    -- runtime system to this function.  (Exception: if "UncaughtThrowError" is thrown
    -- but not caught, it will cause a fatal runtime error.)  This function will
    -- print some info about the error that was thrown, then it will throw an
    -- error called "UncaughtThrowError".  This error may or may not be caught by
    -- the user's code.  If not, the runtime system will simply print an error and halt.
    --
      var
        charPtr: ptr to char
      print ("\n\n++++++++++ An error has been thrown but not caught ++++++++++\n")
      print ("   Error Name = ")
      printNullTerminatedString (errorID)
      nl ()
      print ("   Location at time of THROW = ")
      charPtr = * (rPtr asPtrTo ptr to char)
      printNullTerminatedString (charPtr)
      print (":")
      printInt (line)
      nl ()
      print ("   Currently active method or function = ")
      rPtr = rPtr + 4
      charPtr = * (rPtr asPtrTo ptr to char)
      printNullTerminatedString (charPtr)
      nl ()
      printCatchStack ()
      print ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n")
      throw UncaughtThrowError (errorID, line, rPtr)
    endFunction

-----------------------------  printCatchStack  ---------------------------------

  function printCatchStack ()
    -- Print all CATCH_RECORDs on the CATCH_STACK.
    --
    -- NOTE: Whenever we leave the body statements in a try (i.e., fall-thru,
    --       throw, or return), records from the catch stack will be popped and
    --       freed.  "getCatchStack" returns a pointer to a list of CATCH_RECORDs
    --       as it is when getCatchStack is called.  This routine merely reads data
    --       from these records, so additional pushing and popping is okay and may
    --       occur (e.g., we call "print", which may contain TRY statements).  However,
    --       none of the records on the list returned by getCatchStack will be freed
    --       before this routine is done looking at and printing them.
    --
    var p: ptr to CATCH_RECORD = getCatchStack () asPtrTo CATCH_RECORD
      print ("   Here is the CATCH STACK:\n")
      while p
        print ("     ")
        printNullTerminatedString (p.fileName)
        print (":")
        printInt (p. lineNumber)
        print (":\t")
        printNullTerminatedString (p.errorID)
        --print ("\t\t(CATCH-RECORD addr = 0x")
        --printHex (p asInteger)
        --print (")")
        nl ()
/***
        print ("     ")
        printNullTerminatedString (p.errorID)
        print ("\n        Source Filename:   ")
        printNullTerminatedString (p.fileName)
        print ("\n        Line number:       ")
        printInt (p. lineNumber)
        print ("\n        Catch record addr: ")
        printHex (p asInteger)
        print ("\n        Catch code addr:   ")
        printHex (p.catchCodePtr)
        print ("\n        Old FP:            ")
        printHex (p.oldFP)
        print ("\n        Old SP:            ")
        printHex (p.oldSP)
        nl ()
***/
        p = p.next
      endWhile
    endFunction

endCode
