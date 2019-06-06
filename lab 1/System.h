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
    external printDouble (d: double)
    nl ()                                -- Short for printChar ('\n')

  -- The following routines are implemented in assembly in the Runtime.s file.
  functions
    external RuntimeExit ()           -- Terminate all execution and do not return
    external getCatchStack () returns int  -- Actually returns ptr to a CATCH_RECORD
    external MemoryZero (p: ptr to void, byteCount: int)  -- Set block of mem to zeros
    external MemoryCopy (destPtr: ptr to void,  -- Copy bytes from one memory area
                         srcPtr: ptr to void,   -- to another memory area.  Need not
                         byteCount: int)        -- be aligned, but must not overlap!

  -- The following functions are part of the KPL language support.
  functions
    KPLMemoryInitialize ()
    KPLMemoryAlloc (byteCount: int) returns ptr to char
    KPLMemoryFree (p: ptr to char)
    KPLUncaughtThrow (errorID: ptr to char, line: int, rPtr: int)
    KPLIsKindOf (objPtr: ptr to Object, typeDesc: ptr to int) returns int
    KPLSystemError (message: ptr to array of char)
  errors
    UncaughtThrowError (errorID: ptr to char, line: int, routineDescPtr: int)

  --
  -- The class "Object" is the root of the superclass/subclass tree.
  --
  class Object
  endClass

endHeader
