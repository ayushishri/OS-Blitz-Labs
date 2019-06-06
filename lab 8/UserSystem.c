code UserSystem

  -- This package contains:
  --     Wrapper functions for the syscalls
  --     Useful functions (e.g., StrEqual, Min, ...)
  --     Printing functions (printIntVar)
  --     Functions involved in HEAP allocation and freeing
  --     Misc. language support routines, including error handling
  --     Functions involved in THROW and CATCH processing

-----------------------------  Sys_Exit  ---------------------------------

    function Sys_Exit (returnStatus: int)
      --
      -- This function causes the current process and its thread to
      -- terminate.  The "returnStatus" will be saved so that it can
      -- be passed to a "Sys_Join" executed by the parent process.
      -- This function never returns.
      --
        var ignore: int
        ignore = DoSyscall (SYSCALL_EXIT, returnStatus, 0, 0, 0)
      endFunction

-----------------------------  Sys_Shutdown  ---------------------------------

    function Sys_Shutdown ()
      --
      -- This function will cause an immediate shutdown of the kernel.  It
      -- will not return.
      --
        var ignore: int
        ignore = DoSyscall (SYSCALL_SHUTDOWN, 0, 0, 0, 0)
      endFunction

-----------------------------  Sys_Yield  ---------------------------------

    function Sys_Yield ()
      --
      -- This function yields the CPU to another process on the ready list.
      -- Once this process is scheduled again, this function will return.
      -- From the caller's perspective, this routine is similar to a "nop".
      --
        var ignore: int
        ignore = DoSyscall (SYSCALL_YIELD, 0, 0, 0, 0)
      endFunction

-----------------------------  Sys_Fork  ---------------------------------

    function Sys_Fork () returns int
      --
      -- This function creates a new process which is a copy of the current
      -- process.  The new process will have a copy of the virtual memory
      -- space and all files open in the original process will also be open
      -- in the new process.  Both processes will then return from this
      -- function.  In the parent process, the pid of the child will be
      -- returned; in the child, zero will be returned.
      --
        return DoSyscall (SYSCALL_FORK, 0, 0, 0, 0)
      endFunction

-----------------------------  Sys_Join  ---------------------------------

    function Sys_Join (processID: int) returns int
      --
      -- This function causes the caller to wait until the process with
      -- the given pid has terminated, by executing a call to "Sys_Exit".
      -- The returnStatus passed by that process to "Sys_Exit" will be
      -- returned from this function.  If the other process invokes
      -- "Sys_Exit" first, this returnStatus will be saved until either
      -- its parent executes a "Sys_Join" naming that process's pid or
      -- until its parent terminates.
      --
        return DoSyscall (SYSCALL_JOIN, processID, 0, 0, 0)
      endFunction

-----------------------------  Sys_Exec  ---------------------------------

    function Sys_Exec (filename: String) returns int
      --
      -- This function is passed the name of a file.  That file is assumed
      -- to be an executable file.  It is read in to memory, overwriting the
      -- entire address space of the current process.  Then the OS will
      -- begin executing the new process.  Any open files in the current
      -- process will remain open and unchanged in the new process.
      -- Normally, this function will not return.  If there are problems,
      -- this function will return -1.
      --
        return DoSyscall (SYSCALL_EXEC, filename asInteger, 0, 0, 0)
      endFunction

-----------------------------  Sys_Create  ---------------------------------

    function Sys_Create (filename: String) returns int
      --
      -- This function creates a new file on the disk.  If all is okay,
      -- it returns 0, otherwise it returns a non-zero error code.  This
      -- function does not open the file; so the caller must use "Sys_Open"
      -- before attempting any I/O.
      --
        return DoSyscall (SYSCALL_CREATE, filename asInteger, 0, 0, 0)
      endFunction

-----------------------------  Sys_Open  ---------------------------------

    function Sys_Open (filename: String) returns int
      --
      -- This function opens a file.  The file must exist already exist.
      -- If all is OK, this function returns a file descriptor, which is
      -- a small, non-negative integer.  It errors occur, this function
      -- returns -1.
      --
        return DoSyscall (SYSCALL_OPEN, filename asInteger, 0, 0, 0)
      endFunction

-----------------------------  Sys_Read  ---------------------------------

    function Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      --
      -- This function is passed the fileDescriptor of a file (which is
      -- assumed to have been successfully opened), a pointer to an area of
      -- memory, and a count of the number of bytes to transfer.  This
      -- function reads that many bytes from the current position in the
      -- file and places them in memory.  If there are not enough bytes
      -- between the current position and the end of the file, then a lesser
      -- number of bytes is transferred.  The current file position will be
      -- advanced by the number of bytes transferred.
      --
      -- If the input is coming from the serial device (the terminal), this
      -- function will wait for at least one character to be typed before
      -- returning, and then will return as many characters as have been typed
      -- and buffered since the previous call to this function.
      --
      -- This function will return the  number of characters moved.  If there
      -- are errors, it will return -1.
      --
        return DoSyscall (SYSCALL_READ, fileDesc, buffer asInteger, sizeInBytes, 0)
      endFunction

-----------------------------  Sys_Write  ---------------------------------

    function Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      --
      -- This function is passed the fileDescriptor of a file (which is
      -- assumed to have been successfully opened), a pointer to an area of
      -- memory, and a count of the number of bytes to transfer.  This
      -- function writes that many bytes from the memory to the current
      -- position in the file.
      --
      -- If the end of the file is reached, the file's size will be increased.
      --
      -- The current file position will be advanced by the number of bytes
      -- transferred, so that future writes will follow the data transferred in
      -- this invocation.
      --
      -- The output may also be directed to the serial output, i.e., to the
      -- terminal.
      --
      -- This function will return the  number of characters moved.  If there
      -- are errors, it will return -1.
      --
        return DoSyscall (SYSCALL_WRITE, fileDesc, buffer asInteger, sizeInBytes, 0)
      endFunction

-----------------------------  Sys_Seek  ---------------------------------

    function Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
      --
      -- This function is passed the fileDescriptor of a file (which is
      -- assumed to have been successfully opened), and a new current
      -- position.  This function sets the current position in the file to
      -- the given value and returns the new current position.
      --
      -- Setting the current position to zero causes the next read or write
      -- to refer to the very first byte in the file.  If the file size is N
      -- bytes, setting the position to N will cause the next write to append
      -- data to the end of the file.
      --
      -- The current position is always between 0 and N, where N is the
      -- file's size in bytes.
      --
      -- If -1 is supplied as the new current position, the current position
      -- will be set to N (the file size in bytes) and N will be returned.
      --
      -- It is an error to supply a new current position that is less than
      -- -1 or greater than N.  If so, -1 will be returned.
      --
        return DoSyscall (SYSCALL_SEEK, fileDesc, newCurrentPos, 0, 0)
      endFunction

-----------------------------  Sys_Close  ---------------------------------

    function Sys_Close (fileDesc: int)
      --
      -- This function is passed the fileDescriptor of a file, which is
      -- assumed to be open.  It closes the file, which includes writing
      -- out any data buffered by the kernel.
      --
        var ignore: int
        ignore = DoSyscall (SYSCALL_CLOSE, fileDesc, 0, 0, 0)
      endFunction

-----------------------------  StrEqual  ---------------------------------

  function StrEqual (s1, s2: String) returns bool
      --
      -- Return TRUE if the strings have the same size and contain
      -- the same characters
      --
      var i: int
      if s1 arraySize != s2 arraySize
        return false
      endIf
      for i = 0 to s1 arraySize-1
        if s1[i] != s2[i]
          return false
        endIf
      endFor
      return true
    endFunction

-----------------------------  StrCopy  ---------------------------------

  function StrCopy (s1, s2: String)
      --
      -- This function copies the characters of s2 into s1.  The sizes of
      -- s1 and s2 will not change.
      --
      -- If the two strings are different sizes this function will copy
      -- however many characters it can, i.e., it will copy
      -- min(s1.size, s2.size) characters.
      --
      -- Note that if s1 is longer than s2, you may not get exactly what
      -- you expect, since some of the  characters originally in s1
      -- will remain there.
      --
      var i, sz: int
      sz = Min (s1 arraySize, s2 arraySize)
      for i = 0 to sz-1
        s1[i] = s2[i]
      endFor
    endFunction

-----------------------------  StrCmp  ---------------------------------

  function StrCmp (s1, s2: String) returns int    -- return -1 if <, 0 if =, +1 if >
      --
      -- Return an integer code telling whether s1 is lexicographically
      -- less-than, equal, or greater-than s2.
      --     Return
      --       -1 when s1 < s2
      --        0 when s1 = s2
      --       +1 when s1 > s2
      --
      var sz: int = Min (s1 arraySize, s2 arraySize)
          i: int
      for i = 0 to sz-1
        if s1[i] < s2[i]
          return -1
        elseIf s1[i] > s2[i]
          return 1
        endIf
      endFor
      if s1 arraySize < s2 arraySize
        return -1
      elseIf s1 arraySize > s2 arraySize
        return 1
      else
        return 0
      endIf
    endFunction

-----------------------------  Min  ---------------------------------

  function Min (i, j: int) returns int
      if i<j
        return i
      else
        return j
      endIf
    endFunction

-----------------------------  Max  ---------------------------------

  function Max (i, j: int) returns int
      if i>j
        return i
      else
        return j
      endIf
    endFunction

-----------------------------  printIntVar  ---------------------------------

  function printIntVar (s: String, i: int)
    --
    -- Helper function to making printing the value of a variable easier.
    -- For example:
    --       printIntVar ("myVar", myVar)
    -- prints out:
    --       myVar = 123
    --
      print (s)
      print (" = ")
      printInt (i)
      nl () 
    endFunction

-----------------------------  printHexVar  ---------------------------------

  function printHexVar (s: String, i: int)
    --
    -- Helper function to making printing the value of a variable easier.
    -- For example:
    --       printHexVar ("myVar", myVar)
    -- prints out:
    --       myVar = 0x0000007B
    --
      print (s)
      print (" = ")
      printHex (i)
      nl () 
    endFunction

-----------------------------  printBoolVar  ---------------------------------

  function printBoolVar (s: String, b: bool)
    --
    -- Helper function to making printing the value of a variable easier.
    -- For example:
    --       printBoolVar ("myVar", myVar)
    -- prints out:
    --       myVar = TRUE
    --
      print (s)
      print (" = ")
      printBool (b)
      nl () 
    endFunction

-----------------------------  printCharVar  ---------------------------------

  function printCharVar (s: String, c: char)
    --
    -- Helper function to making printing the value of a variable easier.
    -- For example:
    --       printCharVar ("myVar", myVar)
    -- prints out:
    --       myVar = 'q'
    --
      print (s)
      print (" = '")
      printChar (c)
      print ("'\n")
    endFunction

-----------------------------  printPtr  ---------------------------------

  function printPtr (s: String, p: ptr to void)
    --
    -- Helper function to making printing the value of a variable easier.
    -- For example:
    --       printPtr ("myVarAddr", &myVar)
    -- prints out:
    --       myVarAddr = 0x0001D9C4
    --
      print (s)
      print (" = ")
      printHex (p asInteger)
      nl () 
    endFunction

-----------------------------  nl  ---------------------------------

  function nl ()
      printChar ('\n')
    endFunction

---------------------------  printNullTerminatedString  -------------------------------

  function printNullTerminatedString (p: ptr to char)
    --
    -- This function is passed a pointer to a sequence of
    -- characters, followed by '\0'.  It prints them.
    --
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

-----------------------------  MemoryEqual  ---------------------------------

  function MemoryEqual (s1, s2: ptr to char, len: int) returns bool
    --
    -- Return TRUE if the blocks of memory contain the same bytes.
    --
      var i: int
      for i = 0 to len-1
        if *s1 != *s2
          return false
        endIf
        s1 = s1 + 1
        s2 = s2 + 1
      endFor
      return true
    endFunction

------------------------------------  THE HEAP  ---------------------------------

  -- The following functions (provided below) are used to implement the heap.
  --    KPLSystemInitialize
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

-----------------------------  KPLSystemInitialize  ---------------------------------

  function KPLSystemInitialize ()
    --
    -- Initialize the array count without initializing the data.
    --
    var p: ptr to int = (& memoryArea) asPtrTo int
      *p = HEAP_SIZE
    endFunction

-----------------------------  KPLMemoryAlloc  ---------------------------------

  function KPLMemoryAlloc (byteCount: int) returns ptr to char
    --
    -- This routine is called to allocate memory from the heap.
    -- This heap implementation is trivial: It allocates space
    -- sequentially, until there is no more.  When space is exhausted,
    -- we throw an error.
    --
    -- NOTE: THIS FUNCTION IS ***NOT*** RE-ENTRANT!!!  The caller must
    --       ensure that it will only be called from one thread.  (If it might
    --       be called from different threads, the caller must ensure that it
    --       is protected with semaphores, mutexes, etc. from being invoked
    --       while it is already active!!!
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
    --
    -- This routine is called to free memory in the heap.  It is passed a
    -- pointer to a block of memory previously allocated in a call to "alloc".
    --
    -- Currently, this routine is a nop.
    --
      --print ("\n+++++ KPLMemoryFree called... ptr: ")
      --printHex (p asInteger)
      --print (" +++++\n")
    endFunction

-----------------------------  KPLSystemError  ---------------------------------

  function KPLSystemError (message: String)
    --
    -- Come here when a fatal error occurs.  Print a message and terminate
    -- the KPL program.  There will be no return from this function.
    -- NOTE: This function is not aware of threads; it is better to use FatalError
    -- (from the Thread package) if possible.
    --
      print ("\n\nFATAL KPL RUNTIME ERROR IN USER PROGRAM: ")
      print (message)
      nl ()
      TerminateWithError ()
    endFunction

------------------------  Internal Runtime Data Structures  ------------------------
  --
  -- These data structures are intimately connected with the language
  -- implementation and the compiler, and can safely be ignored by
  -- KPL programmers.  They should not be changed without appropriate
  -- modifications to the compiler.
  --
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

-----------------------------  KPLIsKindOf  ---------------------------------

  function KPLIsKindOf (objPtr: ptr to Object, typeDesc: ptr to int) returns int
    --
    -- There will be an upcall from the runtime system to this function, which
    -- will evaluate the "isKindOf" relation.  This routine determines whether
    -- the object pointed to satisfies the "isKindOf" relation, i.e., whether it
    -- is an instance of the given type, or of one of its super-classes or super-
    -- interfaces.  It returns either 0 (for FALSE) or 1 (for TRUE).
    --
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

-----------------------------  KPLUncaughtThrow  ---------------------------------

  function KPLUncaughtThrow (errorID: ptr to char, line: int, rPtr: int)
    --
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
    --
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
        /**********
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
        **********/
        p = p.next
      endWhile
    endFunction

endCode
