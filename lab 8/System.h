header System

  -- The following routines print data directly and immediately to the output.
  -- They are intended only for use in debugging kernel code; as such they
  -- bypass the serial I/O device entirely and use the debug2 "back-door" to
  -- the virtual machine.  They may be called from any code, including
  -- from within an interrupt handler.  NOTE: A process switch may occur at
  -- any time, but each of these routines will print atomically.  In
  -- other words, each will either print all of its output before the switch
  -- or all of its output when the process resumes.  However, if several calls
  -- are made in sequence, the output may be intermixed with the output from
  -- another thread.  To avoid this and ensure all output from several calls
  -- is printed together, you may wish to create and use a "lock" and
  -- force all threads to acquire the lock before printing.  Another approach
  -- is to explicitly disable interrupts before making a series of printing
  -- calls and then restore the interrupt status after printing is complete.
  functions
    external print (s: ptr to array of char)
    external printInt (i: int)
    external printHex (i: int)           -- prints, e.g., 0x0012ABCD
    external printChar (c: char)         -- prints non-printables as, e.g., \x05
    external printBool (b: bool)         -- prints "TRUE" or "FALSE"


  -- Misc. useful stuff.
  type String = ptr to array of char
  functions
    MemoryEqual (s1, s2: ptr to char, len: int) returns bool
    StrEqual (s1, s2: String) returns bool
    StrCopy (s1, s2: String)               -- Copy s2 into s1; move min(s1,s2) chars
    StrCmp (s1, s2: String) returns int    -- return -1 if <, 0 if =, +1 if >
    Min (i, j: int) returns int
    Max (i, j: int) returns int
    printIntVar (s: String, i: int)        -- prints "s = " int \n
    printHexVar (s: String, i: int)        -- prints "s = " 0x00000000 \n
    printBoolVar (s: String, b: bool)      -- prints "s = " bool \n
    printCharVar (s: String, c: char)      -- prints "s = " ch \n
    printPtr (s: String, p: ptr to void)   -- prints "s = " 0x00000000 \n
    nl ()                                  -- Short for printChar ('\n')
    PrintMemory (startingAddr, numBytes: int)


  -- The following routines are implemented in assembly in the Runtime.s file.
  functions
    external Cleari ()                -- Execute "cleari" instruction and return
    external Seti ()                  -- Execute "seti" instruction and return
    external Wait ()                  -- Execute "wait" instruction and return
    external RuntimeExit ()           -- Terminate all execution and do not return
    external getCatchStack () returns int  -- Actually returns ptr to a CATCH_RECORD
    external MemoryZero (destAddr, byteCount: int)  -- Set block of mem to zeros
    external MemoryCopy (destAddr: int,             -- Copy bytes from one memory area
                         srcAddr: int,              -- to another memory area.  Need not
                         byteCount: int)            -- be aligned, but must not overlap!

  -- The following function is called to shutdown the entire system when a
  -- major error occurs.  We use a variable since the appropriate function
  -- to invoked will be changed after thread scheduling begins.
  var
    FatalError: ptr to function (ptr to array of char)

  -- The following functions are part of the KPL language support.
  functions
    KPLSystemInitialize ()
    KPLMemoryAlloc (byteCount: int) returns ptr to char
    KPLMemoryFree (p: ptr to char)
    KPLUncaughtThrow (errorID: ptr to char, line: int, rPtr: int)
    KPLIsKindOf (objPtr: ptr to Object, typeDesc: ptr to int) returns int
    KPLSystemError (message: ptr to array of char)
  errors
    UncaughtThrowError (errorID: ptr to char, line: int, routineDescPtr: int)


  -- The class "Object" is the root of the superclass/subclass tree.  It has no
  -- fields and no methods.
  class Object
  endClass

endHeader
