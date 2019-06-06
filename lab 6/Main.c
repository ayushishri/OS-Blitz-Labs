code Main

-----------------------------  Main  ---------------------------------

  function main ()
    --
    -- This function initializes the OS kernel and then starts up the
    -- initial user-level program.
    --
      var freeze: Semaphore = new Semaphore

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

      -- Call this function to more completely exercise the kernel code
      AllocateRandomFrames ()

      -- Initialize the DiskDriver
      diskDriver = new DiskDriver
      diskDriver.Init ()

      -- Initialize the FileManager
      fileManager = new FileManager
      fileManager.Init ()

      -- Create a thread and start a user-level program running
      InitFirstProcess ()

      -- The main thread has nothing more to do, but do not call ThreadFinish,
      -- since that will result in adding the mainThread to the freeList.
      -- Instead, cause this thread to sleep forever.
      freeze.Init (0)
      freeze.Down ()
      FatalError ("The main thread should never reach this point")

    endFunction

-----------------------------  AllocateRandomFrames  ---------------------------------

  function AllocateRandomFrames ()
    --
    -- This function allocates every other frame.  It does this by allocating
    -- all frames and then releasing every other frame.  The purpose of this is
    -- to make sure the kernel code can deal with data that straddles page
    -- boundaries when the pages are not in contiguous frames.
    --
    -- Students should call this routine immediately after initializing the
    -- FrameManager.
    --
      var i: int
          a: array [NUMBER_OF_PHYSICAL_PAGE_FRAMES] of AddrSpace
      printIntVar ("AllocateRandomFrames called.  NUMBER_OF_PHYSICAL_PAGE_FRAMES",
                    NUMBER_OF_PHYSICAL_PAGE_FRAMES)
      a = new array of AddrSpace {NUMBER_OF_PHYSICAL_PAGE_FRAMES of new AddrSpace}
      for i = 0 to NUMBER_OF_PHYSICAL_PAGE_FRAMES-1
        a[i].Init ()
        frameManager.GetNewFrames (& a[i], 1)
      endFor
      for i = 0 to NUMBER_OF_PHYSICAL_PAGE_FRAMES-1 by 2
        frameManager.ReturnAllFrames (& a[i] )
      endFor

    endFunction

endCode
