header Thread

  uses System, List

  const

    SYSTEM_STACK_SIZE = 1000       -- in words
    STACK_SENTINEL = 0x24242424    -- in ASCII, this is "$$$$"

  functions

    InitializeScheduler ()
    Run (nextThread: ptr to Thread)
    PrintReadyList ()
    ThreadStartMain ()
    ThreadFinish ()
    FatalError (errorMessage: ptr to array of char)
    SetInterruptsTo (newStatus: int) returns int
    TimerInterruptHandler ()

    external Switch (prevThread, nextThread: ptr to Thread)
    external ThreadStartUp ()

  var

    readyList: List [Thread]
    currentThread: ptr to Thread
    mainThread: Thread
    idleThread: Thread
    threadsToBeDestroyed:  List [Thread]
    currentInterruptStatus: int

  enum JUST_CREATED, READY, RUNNING, BLOCKED, UNUSED      -- Thread status
  enum ENABLED, DISABLED                                  -- Interrupt status

  class Thread
    superclass Listable
    fields
      -- The first two fields are at fixed offsets, hardwired into Switch!
      regs: array [13] of int        -- Space for r2..r14
      stackTop: ptr to void          -- Space for r15 (system stack top ptr)
      name: ptr to array of char
      status: int                    -- JUST_CREATED, READY, RUNNING, BLOCKED, UNUSED
      initialFunction: ptr to function (int)    -- The thread's "main" function
      initialArgument: int                      -- The argument to that function
      systemStack: array [SYSTEM_STACK_SIZE] of int
    methods
      Init (n: ptr to array of char)
      Fork (fun: ptr to function (int), arg: int)
      Yield ()
      Sleep ()
      CheckOverflow ()
      Print ()
  endClass

endHeader
