header Synch

  uses Thread

  class Semaphore
    superclass Object
    fields
      count: int
      waitingThreads: List [Thread]
    methods
      Init (initialCount: int)
      Down ()
      Up ()
  endClass

  class Mutex
    superclass Object
    fields
      heldBy: ptr to Thread           -- Null means this mutex is unlocked.
      waitingThreads: List [Thread]
    methods
      Init ()
      Lock ()
      Unlock ()
      IsHeldByCurrentThread () returns bool
  endClass

  class Mutex2
    -- A second, equivalent implementation using Semaphores, which
    -- was not included in initial version of Sync.h.
    superclass Object
    fields
      sem: Semaphore
      heldBy: ptr to Thread           -- Null means this mutex is unlocked.
    methods
      Init ()
      Lock ()
      Unlock ()
      IsHeldByCurrentThread () returns bool
  endClass

  class Condition
    superclass Object
    fields
      waitingThreads: List [Thread]
    methods
      Init ()
      Wait (mutex: ptr to Mutex)
      Signal (mutex: ptr to Mutex)
      Broadcast (mutex: ptr to Mutex)
  endClass

endHeader
