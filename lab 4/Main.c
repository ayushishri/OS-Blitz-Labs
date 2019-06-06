code Main

  -- This is code for testing the ThreadManager, ProcessManager and FrameManager

-----------------------------  Main  ---------------------------------

  function main ()

/*

      var th0, th1, th2: ptr to Thread
          proc0, proc1, proc2, proc3: ptr to ProcessControlBlock

*/

      -- Initialization for testing code
      uniqueNumberLock.Init ()

      -- Initialize the Thread Scheduler
      InitializeScheduler ()

      -- Initialize the ProcessManager
      processManager = new ProcessManager
      processManager.Init ()

      -- Initialize the ThreadManager
      threadManager = new ThreadManager
      threadManager.Init ()

      -- Initialize the FrameManager
      frameManager = new FrameManager
      frameManager.Init ()

-- THE FOLLOWING CODE MAY BE USEFUL DURING TESTING, SO YOU MAY WISH TO
-- UNCOMMENT AND USE ALL OR PART OF IT.  HOWEVER, FOR YOUR FINAL RUN,
-- PLEASE USE THIS FILE EXACTLY AS DISTRIBUTED.

/*

      -- Print the initial state
      print ("\n====================  INITIAL STATE  ====================\n\n")
      threadManager.Print ()
      print ("\n=========================================================\n\n")

      -- Allocate some threads
      print ("\n*****  Allocating some threads  *****\n\n")
      th0 = threadManager.GetANewThread()
      th1 = threadManager.GetANewThread()
      th2 = threadManager.GetANewThread()

      -- Rreturn one of the threads
      print ("*****  Returning one thread  *****\n\n")
      threadManager.FreeThread (th1)

      -- Print the new state
      print ("\n====================  NEW STATE  ====================\n\n")
      threadManager.Print ()
      print ("\n=========================================================\n\n")

      -- Return the other threads
      threadManager.FreeThread (th0)
      threadManager.FreeThread (th2)

      -- Print the initial state
      print ("\n====================  INITIAL STATE  ====================\n\n")
      processManager.Print ()
      print ("\n\n")
      frameManager.Print ()
      print ("\n=========================================================\n\n")

      -- Allocate some processes
      print ("*****  Allocating some processes  *****\n\n")
      proc0 = processManager.GetANewProcess()
      proc1 = processManager.GetANewProcess()
      proc2 = processManager.GetANewProcess()
      proc3 = processManager.GetANewProcess()

      -- Allocate some frames
      print ("*****  Allocating some frames  *****\n\n")
      frameManager.GetNewFrames(&proc2.addrSpace, 3)
      frameManager.GetNewFrames(&proc1.addrSpace, 2)
      frameManager.GetNewFrames(&proc0.addrSpace, 5)
      frameManager.GetNewFrames(&proc3.addrSpace, 1)

      -- Return one of the processes and return its frames
      print ("*****  Returning one process and its frames  *****\n\n")
      frameManager.ReturnAllFrames(&proc1.addrSpace)
      processManager.FreeProcess (proc1)

      -- Rreturn one of the threads
      print ("*****  Returning one thread  *****\n\n")
      threadManager.FreeThread (th1)

      -- Print the new state
      print ("\n====================  NEW STATE  ====================\n\n")
      processManager.Print ()
      print ("\n\n")
      frameManager.Print ()
      print ("\n=========================================================\n\n")

      -- Return the other processes and their frames
      frameManager.ReturnAllFrames(&proc0.addrSpace)
      processManager.FreeProcess (proc0)
      frameManager.ReturnAllFrames(&proc2.addrSpace)
      processManager.FreeProcess (proc2)
      frameManager.ReturnAllFrames(&proc3.addrSpace)
      processManager.FreeProcess (proc3)

*/

      -- Run more thorough tests.
      RunThreadManagerTests ()
      RunProcessManagerTests ()
      RunFrameManagerTests ()

      RuntimeExit ()

    endFunction

-----------------------------  GetUniqueNumber  ---------------------------------
--
-- This function returns a different number each time it is called.  It is passed
-- the number of unique numbers required, in "count".  Normally, count is 1.
-- If several unique numbers are needed, it can be called with a larger "count";
-- In this case, the numbers
--     ret, ret+1, ret+2, ... ret+count-1
-- will all be unique numbers that can be used.
--
  var uniqueNumberLock: Mutex = new Mutex
      nextUnique: int = 1

  function GetUniqueNumber (count: int) returns int
      var i: int
      uniqueNumberLock.Lock ()
      i = nextUnique
      nextUnique = nextUnique + count
      uniqueNumberLock.Unlock ()
      return i
    endFunction

-----------------------------  Misc  ---------------------------------
--
-- These are used by various testing functions.
--
  const NUM_THREADS = 20
        WAIT_TIME = 10
        NUMBER_ITERATIONS = 20

  var allDone: Semaphore = new Semaphore
      freeze: Semaphore = new Semaphore

-----------------------------  RunThreadManagerTests  ---------------------------------
--
-- This function tests the ThreadManager.  It creates a bunch of threads
-- (NUM_THREADS) and starts each thread running.  Each thread will execute
-- the "TestThreadManager" function.  The main thread will then wait until all
-- the threads complete.  To control this, there is a single Semaphore "allDone".
-- Each TestThreadManager thread signals it and the main thread will wait
-- for NUM-THREAD times, i.e., until all threads have finished.
--
-- Each TestThreadManager does basically this:
--        loop NUMBER_ITERATIONS times
--           call GetANewThread
--           wait
--           call FreeThread
--           wait
--        endLoop
--
  function RunThreadManagerTests ()
      var i: int
          th: ptr to Thread

      allDone.Init (0)
      freeze.Init (0)
      uniqueNumberLock.Init ()
      nextUnique = 1

      print ("\n\n*****  THREAD-MANAGER TEST  *****\n\n")

      for i = 1 to NUM_THREADS
        th = alloc Thread
        th.Init ("TestThreadManager")
        th.Fork (TestThreadManager, i)
      endFor

      -- Wait for all the testing threads to complete.
      -- (Make sure you see the completion message!)
      for i = 1 to NUM_THREADS
        allDone.Down ()
      endFor

      if GetUniqueNumber (1) != NUM_THREADS * NUMBER_ITERATIONS + 1
        FatalError ("Concurrency control failure (1)")
      endIf
      print ("\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n")

    endFunction

-----------------------------  TestThreadManager  ---------------------------------
--
-- This function is the main function for a thread which will test the
-- ThreadManager.  It will request and return Thread objects.  First, it
-- grabs a unique number and stuffs it in the Thread.  Later, it makes sure that
-- the number is unchanged.  It could only have changed if some other tester
-- was allowed to access this Thread object before this tester returned it.
--
  function TestThreadManager (myID: int)
      var i, j, e: int
          th: ptr to Thread
      -- printIntVar ("Thread started", myID)
      for i = 1 to NUMBER_ITERATIONS
        printInt (myID)
        e = GetUniqueNumber (1)
        th = threadManager.GetANewThread ()
        th.regs[0] = e
        for j = 1 to WAIT_TIME+i
          currentThread.Yield ()
        endFor
        if e != th.regs[0]
          FatalError ("Concurrency control failure (2)")
        endIf
        printChar ('.')
        threadManager.FreeThread (th)
        for j = 1 to WAIT_TIME-i
          currentThread.Yield ()
        endFor
      endFor
      allDone.Up ()
      freeze.Down ()
    endFunction

-----------------------------  RunProcessManagerTests  ---------------------------------
--
-- This function tests the ProcessManager.  It creates a bunch of tester threads
-- (NUM_THREADS) and starts each thread running.  Each tester thread will execute
-- the "TestProcessManager" function.  The main thread will then wait until all
-- the testers complete.  To control this, there is a single Semaphore "allDone".
-- Each TestProcessManager thread signals it and the main thread will wait
-- for NUM-THREAD times, i.e., until all tester threads have finished.
--
-- Each TestProcessManager does basically this:
--        loop NUMBER_ITERATIONS times
--           call GetANewProcess
--           wait
--           call FreeProcess
--           wait
--        endLoop
--
  function RunProcessManagerTests ()
      var i: int
          th: ptr to Thread

      allDone.Init (0)
      freeze.Init (0)
      uniqueNumberLock.Init ()
      nextUnique = 1

      print ("\n\n*****  PROCESS-MANAGER TEST  *****\n\n")

      for i = 1 to NUM_THREADS
        th = alloc Thread
        th.Init ("TestProcessManager")
        th.Fork (TestProcessManager, i)
      endFor

      -- Wait for all the testing threads to complete.
      -- (Make sure you see the completion message!)
      for i = 1 to NUM_THREADS
        allDone.Down ()
      endFor

      if GetUniqueNumber (1) != NUM_THREADS * NUMBER_ITERATIONS + 1
        FatalError ("Concurrency control failure (1)")
      endIf
      print ("\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n")

    endFunction

-----------------------------  TestProcessManager  ---------------------------------
--
-- This function is the main function for a thread which will test the
-- ProcessManager.  It will request and return ProcessControlBlocks.  First, it
-- grabs a unique number and stuffs it in the PCB.  Later, it makes sure that
-- the number is unchanged.  It could only have changed if some other tester
-- was also allowed to access this ProcessContolBlock  before this tester
-- returned it.
--
  function TestProcessManager (myID: int)
      var i, j, e: int
          pcb: ptr to ProcessControlBlock
      -- printIntVar ("Thread started", myID)
      for i = 1 to NUMBER_ITERATIONS
        printInt (myID)
        e = GetUniqueNumber (1)
        pcb = processManager.GetANewProcess ()
        pcb.exitStatus = e
        for j = 1 to WAIT_TIME+i
          currentThread.Yield ()
        endFor
        if e != pcb.exitStatus
          FatalError ("Concurrency control failure (2)")
        endIf
        printChar ('.')
        processManager.FreeProcess (pcb)
        for j = 1 to WAIT_TIME-i
          currentThread.Yield ()
        endFor
      endFor
      allDone.Up ()
      freeze.Down ()
    endFunction

-----------------------------  RunFrameManagerTests  ---------------------------------
--
-- This function tests the FrameManager.  It creates one thread
-- for each ProcessControlBlock.  Each thread will execute
-- the "TestFrameManager" function.  The main thread will then wait until all
-- the threads complete.  To control this, there is a single Semaphore "allDone2".
-- Each TestFrameManager thread signals it and the main thread will wait
-- for NUM-THREAD times, i.e., until all threads have finished.
-- We also keep track of how many times each frame is used and print this
-- data (as a histogram) after all the threads have finished.
--
  const WAIT_TIME2 = 5
        NUMBER_ITERATIONS_2 = 5

  var allDone2: Semaphore = new Semaphore
      histogram: array [NUMBER_OF_PHYSICAL_PAGE_FRAMES] of int =
                    new array of int {NUMBER_OF_PHYSICAL_PAGE_FRAMES of 0 }

  function RunFrameManagerTests ()
      var i,j : int
          th: ptr to Thread

      allDone2.Init (0)
      freeze.Init (0)

      print ("\n\n*****  FRAME-MANAGER TEST  *****\n\n")
      
      for i = 1 to MAX_NUMBER_OF_PROCESSES
        th = alloc Thread
        th.Init ("TestFrameManager")
        th.Fork (TestFrameManager, i)
      endFor

      -- Wait for all the testing threads to complete.
      -- (Make sure you see the completion message!)
      for i = 1 to MAX_NUMBER_OF_PROCESSES
        allDone2.Down ()
      endFor

      print ("\n\nHere is a histogram showing how many times each frame was used:\n")
      for i = 0 to NUMBER_OF_PHYSICAL_PAGE_FRAMES-1
        print ("  ")
        printInt (i)
        print (":  ")
        for j = 0 to histogram[i]
          printChar ('*')
        endFor
        nl ()
      endFor

      print ("\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n")

    endFunction

-----------------------------  TestFrameManager  ---------------------------------
--
-- This function is the main function for a thread which will test the
-- FrameManager.
--
-- Each TestFrameManager does basically this:
--        get a PCB
--        loop NUMBER_ITERATIONS_2 times
--           for sz = 1, 2, 3, ... MAX
--             call GetNewFrames to get "sz" frames
--             check to make sure the pageTable looks good
--                    and store some data in the frames
--             wait
--             check to make sure the data we stored is still
--                    in the frames
--             call ReturnAllFrames
--             wait
--           endFor
--        endLoop
--
  function TestFrameManager (myID: int)
     var i, j, newData, sz: int
         pcb: ptr to ProcessControlBlock
      -- printIntVar ("Thread started", myID)
      pcb = processManager.GetANewProcess ()
      for i = 1 to NUMBER_ITERATIONS_2
        for sz = 1 to MAX_PAGES_PER_VIRT_SPACE-1
          printInt (myID)
          newData = GetUniqueNumber (sz)
          frameManager.GetNewFrames (&pcb.addrSpace, sz)
          CheckAddrSpace (&pcb.addrSpace, sz, newData)
          for j = 1 to WAIT_TIME+i
            currentThread.Yield ()
          endFor
          printChar ('.')
          CheckAddrSpace2 (&pcb.addrSpace, sz, newData)
          frameManager. ReturnAllFrames (&pcb.addrSpace)
          for j = 1 to WAIT_TIME-i
            currentThread.Yield ()
          endFor
        endFor
      endFor
      allDone2.Up ()
      processManager.FreeProcess (pcb)
      freeze.Down ()
    endFunction

-----------------------------  CheckAddrSpace  ---------------------------------
--
-- This function is passed a pointer to an address space.  It checks to make
-- sure that it looks good.  It also stores some data in each of the frames.
--
  function CheckAddrSpace (addrSpace: ptr to AddrSpace, n: int, uniq: int)
      var i, frameAddr, frameNumber: int
      if addrSpace.numberOfPages != n
        FatalError ("addrSpace.numberOfPages is wrong")
      endIf
      for i = 0 to n-1
        frameAddr = addrSpace.ExtractFrameAddr (i)
        frameNumber = (frameAddr - PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME) / PAGE_SIZE
        -- printIntVar ("frameNumber", frameNumber)
        if frameNumber < 0 ||
           frameNumber >= NUMBER_OF_PHYSICAL_PAGE_FRAMES ||
           frameAddr % PAGE_SIZE != 0
          FatalError ("Bad frame number in some addr space")
        endIf
        histogram[frameNumber] = histogram[frameNumber] + 1
        if addrSpace.ExtractUndefinedBits (i) != 0 ||
           addrSpace.IsDirty (i) ||
           addrSpace.IsReferenced (i) ||
           ! addrSpace.IsWritable (i) ||
           ! addrSpace. IsValid (i)
          FatalError ("Problems with bits in some page table entry")
        endIf
        * (frameAddr asPtrTo int) = uniq + i
      endFor
    endFunction

-----------------------------  CheckAddrSpace2  ---------------------------------
--
-- This function is passed a pointer to an address space.  It checks to make
-- sure that the data we stored in the frame earlier is still there.  The only
-- way it might have gotten corrupted is if some other thread also used this
-- frame.
--
  function CheckAddrSpace2 (addrSpace: ptr to AddrSpace, n: int, uniq: int)
      var i, frameAddr, frameNumber: int
      if addrSpace.numberOfPages != n
        FatalError ("addrSpace.numberOfPages is wrong")
      endIf
      for i = 0 to n-1
        frameAddr = addrSpace.ExtractFrameAddr (i)
        frameNumber = (frameAddr - PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME) / PAGE_SIZE
        -- printIntVar ("frameNumber", frameNumber)
        if frameNumber < 0 ||
           frameNumber >= NUMBER_OF_PHYSICAL_PAGE_FRAMES ||
           frameAddr % PAGE_SIZE != 0
          FatalError ("Bad frame number in some addr space")
        endIf
        if * (frameAddr asPtrTo int) != uniq + i
          FatalError ("Data corruption, indicating that frame was shared")
        endIf
      endFor
    endFunction

endCode
