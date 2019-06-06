code TestProgram3


           ------------------------------------------
           ------                              ------
           ------  Harry's Test Program #3     ------
           ------                              ------
           ------------------------------------------


-----------------------------  main  ---------------------------------

  function main ()
    --
    -- For each of the following tests, you should uncomment the call,
    -- compile and run this program, and show the output to the TA.
    --
    -- This program should be run with the following constants in the kernel:
    --     NUMBER_OF_PHYSICAL_PAGE_FRAMES = 512
    --     MAX_NUMBER_OF_PROCESSES = 10
    --     MAX_PAGES_PER_VIRT_SPACE = 20
    --     MAX_FILES_PER_PROCESS = 10
    --     USER_STACK_SIZE_IN_PAGES = 1
    --     NUMBER_OF_ENVIRONMENT_PAGES = 0


      --SysExitTest ()
      BasicForkTest ()
      --YieldTest ()
      --ForkTest ()
      --JoinTest1 ()
      --JoinTest2 ()
      --JoinTest3 ()
      --JoinTest4 ()
      --ManyProcessesTest1 ()
      --ManyProcessesTest2 ()
      --ManyProcessesTest3 ()
      --ErrorTest ()

      Sys_Exit (0)
    endFunction

-----------------------------  SysExitTest  ---------------------------------

  function SysExitTest ()
    --
    -- This function executes the Sys_Exit syscall.
    --
      print ("\nSysExitTest running.\n\n")
      print ("About to terminate the only process; should cause the OS to stop on a 'wait' instruction.\n")
      Sys_Exit (0)
      print ("*****  Error: Should not return from Sys_Exit  *****")
    endFunction

-----------------------------  BasicForkTest  ---------------------------------

  function BasicForkTest ()
    --
    -- This function creates two processes.  Each one prints a message and
    -- calls Sys_Exit.
    --
      var pid: int
      print ("\nBasicForkTest running.\n\n")
      pid = Sys_Fork ()
      if pid == 0
        print ("I am the child\n")
        Sys_Exit (0)
      elseIf pid == 1
        -- The first process should have pid == 1.
        -- Check to see if nextPID is incremented before or after first use.
        print ("*****  Error: Fork returns 1, implying the parent had pid == 0  *****\n")
        Sys_Exit (0)
      else
        print ("I am the parent\n")
        Sys_Exit (0)
      endIf
    endFunction

-----------------------------  YieldTest  ---------------------------------

  function YieldTest ()
    --
    -- This function creates two processes and each one prints several
    -- messages.  It does this twice.  In the first run, the processes
    -- contain no yields.  In the second run, the processes contain
    -- calls to yield.  If yield acutally does anything, the two runs should
    -- be different.
    --
      var pid, i, j: int
      print ("\nYieldTest running.\n\n")
      print ("This test involves calls to Fork, Yield, and Exit.\n\n")
      print ("RUN ONE: You should see 10 'compiler' messages and 10 'OS' messages.\n\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        for i = 1 to 10
          print ("Designing compilers is fun!\n")
        endFor
      else
        -- Parent Code
        for i = 1 to 10
          print ("Writing OS kernel code is a blast!\n")
        endFor
        Sys_Exit (0)
      endIf
      Sys_Yield ()
      Sys_Yield ()
      Sys_Yield ()
      Sys_Yield ()
      Sys_Yield ()
      print ("\nRUN TWO: You should see the same 20 messages, but the order should be different, due to the presence of 'Yield's.\n\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        for i = 1 to 10
          for j = 1 to i
            Sys_Yield ()
          endFor
          print ("Designing compilers is fun!\n")
          Sys_Yield ()
        endFor
      else
        -- Parent Code
        for i = 1 to 10
          for j = i to 10
            Sys_Yield ()
          endFor
          print ("Writing OS kernel code is a blast!\n")
        endFor
        Sys_Exit (0)
      endIf

    endFunction

-----------------------------  ForkTest  ---------------------------------

  function ForkTest ()
    --
    -- This function creates a whole bunch of processes.
    --
      print ("\nForkTest running.\n\n")
      print ("This test involves calls to Fork, Yield, and Exit.\n")
      print ("There should be 26 columns (A-Z) printed.  Each letter should be printed 5 times.\n")
      ExecuteAFork ("A\n")
      ExecuteAFork (" B\n")
      ExecuteAFork ("  C\n")
      ExecuteAFork ("   D\n")
      ExecuteAFork ("    E\n")
      ExecuteAFork ("     F\n")
      ExecuteAFork ("      G\n")
      ExecuteAFork ("       H\n")
      ExecuteAFork ("        I\n")
      ExecuteAFork ("         J\n")
      ExecuteAFork ("          K\n")
      ExecuteAFork ("           L\n")
      ExecuteAFork ("            M\n")
      ExecuteAFork ("             N\n")
      ExecuteAFork ("              O\n")
      ExecuteAFork ("               P\n")
      ExecuteAFork ("                Q\n")
      ExecuteAFork ("                 R\n")
      ExecuteAFork ("                  S\n")
      ExecuteAFork ("                   T\n")
      ExecuteAFork ("                    U\n")
      ExecuteAFork ("                     V\n")
      ExecuteAFork ("                      W\n")
      ExecuteAFork ("                       X\n")
      ExecuteAFork ("                        Y\n")
      ExecuteAFork ("                         Z\n")
      Sys_Exit (0)
    endFunction

-----------------------------  ExecuteAFork  ---------------------------------

  function ExecuteAFork (str: String)
    --
    -- Create a process to print out the string 5 times.  Also create a child
    -- process to continue and return and terminate the parent.  This done
    -- because otherwise we would create 1 parent processes, with 26 children.
    -- Each child terminates but will turn into a zombie until its parent either
    -- does a join or itself terminates.  With a small MAX number of processes,
    -- we could run out of PCBs if we don't kill the parent and fully reclaim
    -- its resources.
    --
      var pid: int
          i, j: int
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        for i = 1 to 5
          print (str)
          for j = 1 to i*50   -- Increase this constant for greater parallelism
            Sys_Yield ()
          endFor
        endFor
        Sys_Exit (0)
      else
        -- Parent Code
        -- Create another child to continue our work and terminate this process
        pid = Sys_Fork ()
        if pid != 0
          Sys_Exit (0)
        endIf
      endIf
    endFunction

-----------------------------  JoinTest1  ---------------------------------

  function JoinTest1 ()
    --
    -- This function creates two processes.  The child immediately calls
    -- Exit to return a value to the parent.  The parent waits a long time,
    -- (until after the child has done its exit) and then calls Join.  It makes
    -- sure the value passed from the child is returned to the parent.  Then
    -- this test does the same thing again, except this time the parent calls
    -- join immediately while the child waits a long time before calling Exit.
    --
      var pid, i: int
      print ("\nJoinTest 1 running.\n\n")
      print ("This test involves calls to Fork, Yield, and Exit.\n")
      print ("Running first test...\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        print ("This line should print first.\n")
        Sys_Exit (0x12345678)
      else
        -- Parent Code
        -- Wait for child to finish first
        for i = 1 to 100
          Sys_Yield ()
        endFor
        print ("This line should print second.\n")
        i = Sys_Join (pid)
        if i != 0x12345678
          print ("*****  ERROR: Exit passes 0x12345678, but join returns ")
          printHex (i)
          print ("  *****\n")
        else
          print ("Done.\n")
        endIf
      endIf
      print ("Running second test...\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        -- Wait for parent to call join first
        for i = 1 to 100
          Sys_Yield ()
        endFor
        print ("This line should print second.\n")
        Sys_Exit (0x87654321)
      else
        -- Parent Code
        print ("This line should print first.\n")
        i = Sys_Join (pid)
        if i != 0x87654321
          print ("*****  ERROR: Exit passes 0x87654321, but join returns ")
          printHex (i)
          print ("  *****\n")
        else
          print ("Done.\n")
        endIf
      endIf
    endFunction

-----------------------------  JoinTest2  ---------------------------------

  function JoinTest2 ()
    --
    -- This function creates 5 children.  It then waits for each child to
    -- finish. It makes sure that the expected value is passed back from
    -- each child.
    --
      var pid1, pid2, pid3, pid4, pid5: int
      print ("\nJoinTest 2 running.\n\n")
      print ("This test involves calls to Fork, Yield, and Exit.\n")
      print ("Creating 5 children...\n")

      pid1 = Sys_Fork ()
      if pid1 == 0
        -- Code for child 1
        print ("Child 1 running...\n")
        Sys_Yield ()
        Sys_Exit (100)
      endIf

      pid2 = Sys_Fork ()
      if pid2 == 0
        -- Code for child 2
        print ("Child 2 running...\n")
        Sys_Yield ()
        Sys_Exit (200)
      endIf

      pid3 = Sys_Fork ()
      if pid3 == 0
        -- Code for child 3
        print ("Child 3 running...\n")
        Sys_Yield ()
        Sys_Exit (300)
      endIf

      pid4 = Sys_Fork ()
      if pid4 == 0
        -- Code for child 4
        print ("Child 4 running...\n")
        Sys_Yield ()
        Sys_Exit (400)
      endIf

      pid5 = Sys_Fork ()
      if pid5 == 0
        -- Code for child 5
        print ("Child 5 running...\n")
        Sys_Exit (500)
      endIf

      print ("Waiting for children in order 1, 2, 3, 4, 5...\n")

      if 100 != Sys_Join (pid1)
        print ("*****  ERROR: 100 != Sys_Join (pid1)  *****\n")
      endIf

      if 200 != Sys_Join (pid2)
        print ("*****  ERROR: 200 != Sys_Join (pid2)  *****\n")
      endIf

      if 300 != Sys_Join (pid3)
        print ("*****  ERROR: 300 != Sys_Join (pid3)  *****\n")
      endIf

      if 400 != Sys_Join (pid4)
        print ("*****  ERROR: 400 != Sys_Join (pid4)  *****\n")
      endIf

      if 500 != Sys_Join (pid5)
        print ("*****  ERROR: 500 != Sys_Join (pid5)  *****\n")
      endIf

      print ("Creating 5 more children...\n")

      pid1 = Sys_Fork ()
      if pid1 == 0
        -- Code for child 1
        print ("Child 1 running...\n")
        Sys_Yield ()
        Sys_Exit (100)
      endIf

      pid2 = Sys_Fork ()
      if pid2 == 0
        -- Code for child 2
        print ("Child 2 running...\n")
        Sys_Yield ()
        Sys_Exit (200)
      endIf

      pid3 = Sys_Fork ()
      if pid3 == 0
        -- Code for child 3
        print ("Child 3 running...\n")
        Sys_Yield ()
        Sys_Exit (300)
      endIf

      pid4 = Sys_Fork ()
      if pid4 == 0
        -- Code for child 4
        print ("Child 4 running...\n")
        Sys_Yield ()
        Sys_Exit (400)
      endIf

      pid5 = Sys_Fork ()
      if pid5 == 0
        -- Code for child 5
        print ("Child 5 running...\n")
        Sys_Exit (500)
      endIf

      print ("Waiting for children in order 5, 4, 1, 3, 2...\n")

      if 500 != Sys_Join (pid5)
        print ("*****  ERROR: 500 != Sys_Join (pid5)  *****\n")
      endIf

      if 400 != Sys_Join (pid4)
        print ("*****  ERROR: 400 != Sys_Join (pid4)  *****\n")
      endIf

      if 100 != Sys_Join (pid1)
        print ("*****  ERROR: 100 != Sys_Join (pid1)  *****\n")
      endIf

      if 300 != Sys_Join (pid3)
        print ("*****  ERROR: 300 != Sys_Join (pid3)  *****\n")
      endIf

      if 200 != Sys_Join (pid2)
        print ("*****  ERROR: 200 != Sys_Join (pid2)  *****\n")
      endIf

      print ("Done.\n")

    endFunction

-----------------------------  JoinTest3  ---------------------------------

  function JoinTest3 ()
    --
    -- This function waits for a non-existent child, which is an error
    --
      print ("\nJoinTest3 running.\n\n")
      print ("This test involves 5 illegal calls to Sys_Join, waiting on non-existent children.\n")
      print ("In each case, it prints the return code, which should be -1.\n")

      printIntVar ("Return code from 1st call", Sys_Join (-1))
      printIntVar ("Return code from 2nd call", Sys_Join (0))
      printIntVar ("Return code from 3rd call", Sys_Join (1))
      printIntVar ("Return code from 4th call", Sys_Join (2))
      printIntVar ("Return code from 5th call", Sys_Join (40123))

      print ("Done.\n")

    endFunction

-----------------------------  JoinTest4  ---------------------------------

  function JoinTest4 ()
    --
    -- This function waits for a child that we've already waited for.  A
    -- call to Sys_Join in this case should return -1.  It also creates a tree
    -- of processes, and calls Sys_Join for processes that are not children as
    -- well as for processes that are children.
    --
      var pid, i, j, pid1, pid2: int
          myName, nameOfChild1, nameOfChild2: String
      print ("\nJoinTest4 running.\n\n")
      print ("   This test forks a child process and then waits on it twice.\n")
      print ("   The first call to Sys_Join should return its error code; the\n")
      print ("   second call to Sys_Join should return -1.\n\n")

      -- First test: make sure the Sys_Join is called before Sys_Exit.
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        for i = 1 to 100
          Sys_Yield ()
        endFor
        print ("This should print second.\n")
        Sys_Exit (12345)
      endIf
      printIntVar ("The PID of the child", pid)
      print ("This should print first.\n")
      i = Sys_Join (pid)
      if i == 12345
        print ("Okay (1).\n")
      else
        printIntVar ("*****  ERROR: Return code from first call to Sys_Join", i)
      endIf
      i = Sys_Join (pid)
      if i == -1
        print ("Okay (2).\n")
      else
        printIntVar ("*****  ERROR: Return code from second call to Sys_Join", i)
      endIf

      -- Second test: make sure the Sys_Exit is called before Sys_Join.
      pid = Sys_Fork ()
      if pid == 0
        -- Child Code
        print ("This should print first.\n")
        Sys_Exit (12345)
      endIf
      for i = 1 to 100
        Sys_Yield ()
      endFor
      printIntVar ("The PID of the child", pid)
      print ("This should print second.\n")
      i = Sys_Join (pid)
      if i == 12345
        print ("Okay (3).\n")
      else
        printIntVar ("*****  ERROR: Return code from first call to Sys_Join", i)
      endIf
      i = Sys_Join (pid)
      if i == -1
        print ("Okay (4).\n")
      else
        printIntVar ("*****  ERROR: Return code from second call to Sys_Join", i)
      endIf

      print ("\n   In the next test, we create 2 children, and each creates 2 children,\n")
      print ("   giving 7 processes in all.  Then each process attempts a Sys_Join on\n")
      print ("   every process except its own children, to make sure the result is -1.\n")
      print ("   Finally, each process with children waits on them.\n\n")
      -- Create this process tree:
      --    A
      --      A.B
      --         A.B.D
      --         A.B.E
      --      A.C
      --         A.C.F
      --         A.C.G
      -- Set every process's "myName".  For processes with children, set
      -- "pid1" and "pid2" and set "nameOfChild1" and "nameOfChild2".
      pid1 = Sys_Fork ()
      if pid1 == 0
        -- Now in child (process A.B)
        pid1 = Sys_Fork ()
        if pid1 == 0
          -- Now in child (process A.B.D)
          myName = "A.B.D"
        else
          -- Now in parent (process A.B)
          myName = "A.B"
          pid2 = Sys_Fork ()
          if pid2 == 0
            -- Now in child (process A.B.E)
            myName = "A.B.E"
            pid1 = 0
          else
            -- Now in parent (process A.B)
            myName = "A.B"
            nameOfChild1 = "A.B.D"
            nameOfChild2 = "A.B.E"
          endIf
        endIf
      else
        -- Now in parent (process A)
        pid2 = Sys_Fork ()
        if pid2 == 0
          -- Now in child (process A.C)
          pid1 = Sys_Fork ()
          if pid1 == 0
            -- Now in child (process A.C.F)
            myName = "A.C.F"
          else
            -- Now in parent (process A.C)
            pid2 = Sys_Fork ()
            if pid2 == 0
              -- Now in child (process A.C.G)
              myName = "A.C.G"
              pid1 = 0
            else
              -- Now in parent (process A.C)
              myName = "A.C"
              nameOfChild1 = "A.C.F"
              nameOfChild2 = "A.C.G"
            endIf
          endIf
        else
          -- Now in parent (process A)
          myName = "A"
          nameOfChild1 = "A.B"
          nameOfChild2 = "A.C"
        endIf
      endIf

      -- Every process will execute the following code.  First
      -- print out this process's name and, if it has children,
      -- print their names and pids.
      print (myName)
      print (" is running...\n")
      if nameOfChild1
        print ("  My first  child is ")
        print (nameOfChild1)
        printIntVar ("   pid1", pid1)
        print ("  My second child is ")
        print (nameOfChild2)
        printIntVar ("   pid2", pid2)
      endIf
      print ("---------------\n")

      -- Next call Sys_Join for lots of different pids, except do
      -- not call Sys_Join for our own children.  Make sure everything
      -- returns -1.
      for i = -5 to 20
        if i != pid1 && i != pid2
          j = Sys_Join (i)
          if j != -1
            print ("***** ERROR in process ")
            print (myName)
            print (" *****\n")
            printIntVar ("*****  Arg to Sys_Join, i", i)
            printIntVar ("*****  Result from Sys_Join was not -1; j", j)
          endIf
        endIf
      endFor

      -- Wait for every body to finish the above testing before printing.
      for i = 1 to 400
        Sys_Yield ()
      endFor

      print (myName)
      print (" done with error tests...\n")

      -- Wait for every body to finish the above printing.
      for i = 1 to 400
        Sys_Yield ()
      endFor

      -- If we've got children...
      if pid1 != 0

        -- Wait for the first child to terminate.
        print ("-----------------------------------")
        print (myName)
        print (" is waiting on ")
        print (nameOfChild1)
        printIntVar ("     pid1", pid1)
        j = Sys_Join (pid1)
        if j != 123
          print ("***** ERROR in process ")
          print (myName)
          print (" *****\n")
          printIntVar ("*****  Arg to Sys_Join, pid1", pid1)
          printIntVar ("*****  Result from Sys_Join was not 123; j", j)
        endIf

        -- Wait for the second child to terminate.
        print ("-----------------------------------")
        print (myName)
        print (" is waiting on ")
        print (nameOfChild2)
        printIntVar ("     pid2", pid2)
        j = Sys_Join (pid2)
        if j != 123
          print ("***** ERROR in process ")
          print (myName)
          print (" *****\n")
          printIntVar ("*****  Arg to Sys_Join, pid2", pid2)
          printIntVar ("*****  Result from Sys_Join was not 123; j", j)
        endIf

      else
        -- Else if this process has no children, then wait a long time
        -- so the parents will call Sys_Join first.

        for i = 1 to 400
          Sys_Yield ()
        endFor

      endIf

      print (myName)
      print (" is done.\n")
      Sys_Exit (123)
    endFunction

-----------------------------  ManyProcessesTest1  ---------------------------------

  function ManyProcessesTest1 ()
    --
    -- This function creates lots of processes.  Each should terminate, so
    -- the test should not cause problems unless resources are not freed.
    --
      var i, pid: int
      print ("\nManyProcessesTest1 running.\n\n")
      print ("This test should create 100 child processes.\n")
      print ("It should print 100 lines of output.\n")

      for i = 1 to 100
        pid = Sys_Fork ()
        if pid != 0
          -- Parent code
          Sys_Exit (0)
        endIf
        print ("Child ")
        printInt (i)
        nl ()
      endFor

      print ("Done.\n")

    endFunction

-----------------------------  ManyProcessesTest2  ---------------------------------

  function ManyProcessesTest2 ()
      print ("\nManyProcessesTest2 running.\n\n")
      CreateManyProcesses (9)
    endFunction

-----------------------------  ManyProcessesTest3  ---------------------------------

  function ManyProcessesTest3 ()
      print ("\nManyProcessesTest3 running.\n\n")
      CreateManyProcesses (10)
    endFunction

-----------------------------  CreateManyProcesses  ---------------------------------

  function CreateManyProcesses (numProcs: int)
    --
    -- This function creates numProcs additional processes.  If numProcs is
    -- 9 or less, this should be possible.  If numProcs is greater then the
    -- OS should run out of PCBs and hang.
    --
      var i, pid: int
      print ("This test attempts to create ")
      printInt (numProcs)
      print (" new processes.\n")
 
      if numProcs <= 9
        print ("It should print a line for each process and then it should print 123.\n")
      else
        print ("It should run out of resources and hang.\n")
      endIf

      print ("Process 0\n")  -- Print a line for the initial process
      pid = Sys_Fork ()
      if pid == 0
        -- Code for 1st child
        print ("Process 1\n")
        for i = 2 to numProcs
          pid = Sys_Fork ()
          if pid == 0
            -- Code for a new child
            print ("Process ")
            printInt (i)
            nl ()
          else
            -- Code for the parent: wait on the child
            Sys_Exit (Sys_Join (pid))
          endIf
        endFor
        -- Last child will exit loop and return
        Sys_Exit (123)
      else
        -- Code for original parent: wait on its child
        printIntVar ("Final return value", Sys_Join (pid))
        print ("Done.\n")
      endIf

    endFunction

-----------------------------  ErrorTest  ---------------------------------

  function ErrorTest ()
    --
    -- This tests what happens when a user-level program has an error.
    --
      var pid, i: int
          p: ptr to int

      print ("\nErrorTest running.\n\n")

      print ("Should print \"User Program Error: Attempt to use a null pointer!\"...\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child process: cause runtime error
        *p = 123
        print ("*****  ERROR: Execution will not continue  *****\n")
        Sys_Exit (0)
      endIf

      -- Parent process: wait for child to complete
      i = Sys_Join (pid)
      nl ()
      Check (i, -2)

      print ("\nShould print \"An AddressException exception has occurred while in user mode\"...\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child process: cause address exception
        p = 0xeeeeeee0 asPtrTo int
        *p = 123
        print ("*****  ERROR: Execution will not continue  *****\n")
        Sys_Exit (0)
      endIf

      -- Parent process: wait for child to complete
      i = Sys_Join (pid)
      nl ()
      Check (i, -1)

      print ("\nShould print \"A PageReadonlyException exception has occurred while in user mode\"...\n")
      pid = Sys_Fork ()
      if pid == 0
        -- Child process: cause page fault
        p = main asPtrTo int
        *p = 123
        print ("*****  ERROR: Execution will not continue  *****\n")
        Sys_Exit (0)
      endIf

      -- Parent process: wait for child to complete
      i = Sys_Join (pid)
      nl ()
      Check (i, -1)

      print ("\nDone.\n")

    endFunction

-----------------------------  Check  ---------------------------------

  function Check (i, expectedVal: int)
    --
    -- This function is passed the return code from a syscall and
    -- the expected value.  It prints an error message if it is incorrect.
    --
      if i == expectedVal
        print ("Okay.\n")
      else
        print ("*****  ERROR: Return value from syscall (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      
    endFunction


endCode
