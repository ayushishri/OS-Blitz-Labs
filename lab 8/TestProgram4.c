code TestProgram4


           ------------------------------------------
           ------                              ------
           ------  Harry's Test Program #4     ------
           ------                              ------
           ------------------------------------------


-----------------------------  main  ---------------------------------

  function main ()
    --
    -- For each of the following tests, you should uncomment the call,
    -- compile and run this program, and hand in the output it produces.
    --
    -- This program should be run with the following constants in the kernel:
    --     NUMBER_OF_PHYSICAL_PAGE_FRAMES = 512
    --     MAX_NUMBER_OF_PROCESSES = 10
    --     MAX_PAGES_PER_VIRT_SPACE = 20
    --     MAX_FILES_PER_PROCESS = 10
    --     USER_STACK_SIZE_IN_PAGES = 1
    --     NUMBER_OF_ENVIRONMENT_PAGES = 0

      -- OpenTest1 ()
      -- OpenTest2 ()
      -- OpenCloseTest ()
      -- CloseTest ()
      -- ReadTest1 ()
      -- ReadTest2 ()
      -- SeekTest ()
      -- WriteTest1 ()
      -- WriteTest2 ()
      -- WriteTest3 ()
      -- WriteTest4 ()
      -- WriteTest5 ()
      -- ReadTest3 ()
      -- ReadTest4 ()
      -- WriteTest6 ()
      -- OpenTest3 ()
      -- ExecTest1 ()
      -- ExecTest2 ()
      -- ExecTest3 ()

      Sys_Exit (0)
    endFunction


-----------------------------  OpenTest1  ---------------------------------

  function OpenTest1 ()
    --
    -- Basic tests of Sys_Open.
    --
      var fd: int
      print ("\n**********  OpenTest1 running  **********\n\n")

      print ("Attempting to open a nonexistent file, which should return -1.\n")
      fd = Sys_Open ("NotThere")
      if fd == -1
        print ("Okay.\n")
      elseIf fd < 0
        print ("*****  ERROR: Open returned a negative number ( ")
        printInt (fd)
        print (") other than -1  *****\n")
      else
        print ("*****  ERROR: Open returned a non-negative number ( ")
        printInt (fd)
        print (") indicating the open succeeded  *****\n")
      endIf

      print ("Attempting to open a file with an overly large name, which should return -1.\n")
      fd = Sys_Open ("NameOfNonexistingFileeeeeeeeeeeeeeeeeeeeeeee")
      if fd == -1
        print ("Okay.\n")
      elseIf fd < 0
        print ("*****  ERROR: Open returned a negative number ( ")
        printInt (fd)
        print (") other than -1  *****\n")
      else
        print ("*****  ERROR: Open returned a non-negative number ( ")
        printInt (fd)
        print (") indicating the open succeeded  *****\n")
      endIf

      print ("Attempting to open an existing file, which should succeed.\n")
      fd = Sys_Open ("file1")
      if fd < 0
        print ("*****  ERROR: Open returned a negative number ( ")
        printInt (fd)
        print (") indicating the open failed  *****\n")
      elseIf fd == 0
        print ("Okay.\n")
      else
        print ("*** WARNING: The syscall returns ")
        printInt (fd)
        print (", which is perhaps correct but I was expecting 0 for the first open fd ***\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  OpenTest2  ---------------------------------

  function OpenTest2 ()
    --
    -- Attempt to open too many files.
    --
      var i, fd: int
      print ("\n**********  OpenTest2 running  **********\n\n")


      print ("Attempting to open the same file 10 times.\n")
      for i = 0 to 9
        fd = Sys_Open ("file1")
        if fd < 0
          print ("*****  ERROR: Open returned a negative number ( ")
          printInt (fd)
          print (") indicating the open failed  *****\n")
        elseIf fd == i  -- Should get a new fd each time!
          print ("Open ")
          printInt (fd)
          print (" succeeded\n")
        else
          print ("*** WARNING: The syscall returns ")
          printInt (fd)
          print (", which is an unexpected (but possibly correct) fd ***\n")
        endIf
      endFor

      print ("Attempting to open the file one more time, which should return -1.\n")
      fd = Sys_Open ("file1")
      if fd == -1
        print ("Okay.\n")
      elseIf fd < 0
        print ("*****  ERROR: Open returned a negative number ( ")
        printInt (fd)
        print (") other than -1  *****\n")
      else
        print ("*****  ERROR: Open returned a non-negative number ( ")
        printInt (fd)
        print (") indicating the open succeeded  *****\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  OpenCloseTest  ---------------------------------

  function OpenCloseTest ()
    --
    -- Attempt to open and close a file many times.
    --
      var i, j, fd: int
      print ("\n**********  OpenCloseTest running  **********\n\n")

      for j = 1 to 10
        print ("Opening 10 files...\n")
        for i = 0 to 9
          fd = Sys_Open ("file1")
          if fd < 0
            print ("*****  ERROR: Open returned a negative number ( ")
            printInt (fd)
            print (") indicating the open failed  *****\n")
          elseIf fd == i  -- Should get a new fd each time!
            -- print ("Open ")
            -- printInt (fd)
            -- print (" succeeded\n")
          else
            print ("*** WARNING: The syscall returns ")
            printInt (fd)
            print (", which is an unexpected (but possibly correct) fd ***\n")
          endIf
        endFor

        -- Close all 10 fileDesctiptors.
        print ("Closing all 10 files...\n")
        for i = 0 to 9
          Sys_Close (i)
        endFor
      endFor

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  CloseTest  ---------------------------------

  function CloseTest ()
    --
    -- Attempt close some files which are not open.
    --
      print ("\n**********  CloseTest running  **********\n\n")
      print ("Closing files which are not open and invalid file descriptors; should be nops...\n")


      Sys_Close (0)
      Sys_Close (1)
      Sys_Close (9)
      Sys_Close (-1)
      Sys_Close (-12345)
      Sys_Close (12345)

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  ReadTest1  ---------------------------------

  var buffer: array [30] of char = new array of char { 30 of '?' }

  function ReadTest1 ()
    --
    -- This is a basic test of the Read syscall.
    --
      var fd, i: int
          charPtr: ptr to char = &buffer[0]

      print ("\n**********  ReadTest1 running  **********\n\n")

      fd = Sys_Open ("file1")
      i = Sys_Read (fd, charPtr, 30)
      print ("\nShould print '>>>Now is the time for all good m<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 30
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (fd, charPtr, 30)
      print ("\nShould print '>>>en to come to the aid of their<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 30
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (fd, charPtr, 30)
      print ("\nShould print '>>> parties!!!\no the aid of their<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 12
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      -- Now that we are at the end of the file, try another read.
      -- It should not update the buffer.
      i = Sys_Read (fd, charPtr, 30)
      print ("\nShould print '>>> parties!!!\no the aid of their<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 0
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      -- Don't bother closing the file...

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  ReadTest2  ---------------------------------

  function ReadTest2 ()
    --
    -- This is tests error conditions on the Read syscall.
    --
      var fd, i: int
          charPtr: ptr to char = &buffer[0]

      print ("\n**********  ReadTest2 running  **********\n\n")

      print ("Reading files which are not open and invalid file descriptors...\n")

      i = Sys_Read (0, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (1, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (9, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (-1, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (-12345, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (12345, charPtr, 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      fd = Sys_Open ("file1")

      print ("Reading with negative sizeInBytes...\n")

      i = Sys_Read (0, charPtr, -1)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Read (0, charPtr, -123123123)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  ReadTest3  ---------------------------------

  var buffer2: array [10] of char = new array of char { 10 of '-' }

  function ReadTest3 ()
    --
    -- This is tests that a file open in the parent will be readable in child.
    --
      var fd, i, j, pid: int
          charPtr: ptr to char

      print ("\n**********  ReadTest3 running  **********\n\n")

      fd = Sys_Open ("file1")
      buffer2 [9] = '\n'

      print ("Should print 9 lines with the characters 'Now is th'.\n")
      print ("Each line should contain only one character.\n")

      -- Fork off 9 children...
      for i = 1 to 9
        pid = Sys_Fork ()
        if pid == 0
          -- Child: get next character and close the file...
          charPtr = &buffer2[i-1]
          j = Sys_Read (fd, charPtr, 1)
          Sys_Close (fd)
          if j != 1
            print ("*****  ERROR: Return value from Sys_Read (")
            printInt (j)
            print (") is incorrect  *****\n")
          endIf
          print (&buffer2)
          Sys_Exit (0)
        endIf
        -- After forking off child, wait for it to complete, before stating next...
        j = Sys_Join (pid)
      endFor

      buffer2 = new array of char { 10 of '-' }
      buffer2 [9] = '\n'

      print ("Should print 9 lines with the characters 'e time fo'.\n")
      print ("Each line should contain only one character.\n")

      -- Fork off 9 more children (to make sure all resources are freed)...
      for i = 1 to 9
        pid = Sys_Fork ()
        if pid == 0
          -- Child: get next character and close the file...
          charPtr = &buffer2[i-1]
          j = Sys_Read (fd, charPtr, 1)
          Sys_Close (fd)
          if j != 1
            print ("*****  ERROR: Return value from Sys_Read (")
            printInt (j)
            print (") is incorrect  *****\n")
          endIf
          print (&buffer2)
          Sys_Exit (0)
        endIf
        -- After forking off child, wait for it to complete, before stating next...
        j = Sys_Join (pid)
      endFor

      buffer2 = new array of char { 10 of '-' }
      buffer2 [9] = '\n'

      print ("Should print 9 lines with the characters 'r all goo'.\n")
      print ("Each line should contain only one character.\n")

      -- Fork off 9 more children (to make sure all resources are freed)...
      for i = 1 to 9
        pid = Sys_Fork ()
        if pid == 0
          -- Child: get next character and close the file...
          charPtr = &buffer2[i-1]
          j = Sys_Read (fd, charPtr, 1)
          Sys_Close (fd)
          if j != 1
            print ("*****  ERROR: Return value from Sys_Read (")
            printInt (j)
            print (") is incorrect  *****\n")
          endIf
          print (&buffer2)
          Sys_Exit (0)
        endIf
        -- After forking off child, wait for it to complete, before stating next...
        j = Sys_Join (pid)
      endFor

      print ("\n**********  Test Complete  **********\n\n")

      Sys_Exit (0)

    endFunction

-----------------------------  ReadTest4  ---------------------------------

  function ReadTest4 ()
    --
    -- This tests a number of strange conditions on the Read syscall.
    --
      var fd, i, p, save: int

      print ("\n**********  ReadTest4 running  **********\n\n")

      fd = Sys_Open ("file1")

      -- Seek to end of file
      i = Sys_Seek (fd, -1)

      -- Try to read a byte, which should read 0 bytes.
      i = Sys_Read (fd, &buffer2[0], 1)
      Check (i, 0)

      -- Try to read several bytes, which should read 0 bytes.
      i = Sys_Read (fd, &buffer2[0], 5)
      Check (i, 0)
 
      -- Try to read zero bytes, which should be okay.
      i = Sys_Read (fd, &buffer2[0], 0)
      Check (i, 0)

      -- Now seek to beginning of file
      i = Sys_Seek (fd, 0)
 
      -- Try to read -1 bytes, which should be an error.
      i = Sys_Read (fd, &buffer2[0], -1)
      Check (i, -1)
 
      -- Try to read -5 bytes, which should be an error.
      i = Sys_Read (fd, &buffer2[0], -5)
      Check (i, -1)
 
      -- Use a pointer which isn't in our address space, which should be an error.
      i = Sys_Read (fd, (-1) asPtrTo char, 1)
      Check (i, -1)
 
      -- Use a pointer to a page which is read-only, which should be an error.
      i = Sys_Read (fd, main asPtrTo char, 1)
      Check (i, -1)
 
      -- Use a pointer which isn't in our address space, which should be an error.
      i = Sys_Read (fd, 0x0fffffff asPtrTo char, 1)
      Check (i, -1)

      -- Next get a pointer to the last word in our address space.
      -- (This is done by first finding the page containing the stack.
      p = ((&fd) asInteger & 0xffffe000) | 0x00001ffc
      -- printHexVar ("Virtual addr of last word in address space", p)

      -- Try a read into the last 4 bytes of the address space.  Should be okay.
      -- Also, save and restore the word that was updated.
      save = *(p asPtrTo int)
      i = Sys_Read (fd, p asPtrTo char, 4)
      if save == *(p asPtrTo int)
        print ("*****  ERROR: Did not change last 4 bytes  *****\n")
      endIf
      *(p asPtrTo int) = save
      Check (i, 4)

      -- Now check that we are positioned correctly in the file.  Only
      -- the last read should have changed it and it should be positioned
      --       "Now <HERE>is the time for all..."
      i = Sys_Read (fd, &buffer2[0], 10)
      Check (i, 10)
      if MemoryEqual (&buffer2[0], &("is the tim" [0]), 10)
        print ("Okay.\n")
      else
        print ("*****  ERROR: Current position is not what is expected!  *****\n")
        print (&buffer2)
        nl ()
      endIf

      -- Next, try a read of 5 bytes to the last word of our address space.
      -- The first 4 bytes should be okay but then there should be a problem.
      -- The OS should either
      --        Read 4 bytes and return 4
      --        Read 0 bytes and return -1
      -- (The spec is not clear about which should happen.)
      save = *(p asPtrTo int)
      i = Sys_Read (fd, p asPtrTo char, 5)
      if i == 4
        if save == *(p asPtrTo int)
          print ("*****  ERROR: Return code is 4, but did not change last 4 bytes  *****\n")
        else
          print ("Okay.\n")
        endIf
      elseIf i == -1
        if save != *(p asPtrTo int)
          print ("*****  ERROR: Return code is -1 but did change the last 4 bytes  *****\n")
        else
          print ("Okay.\n")
        endIf
      else
        Check (i, -1)
      endIf
      *(p asPtrTo int) = save
       
      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  SeekTest  ---------------------------------

  function SeekTest ()
    --
    -- This is a basic test of the Seek syscall.
    --
      var fd, i, retval: int

      print ("\n**********  SeekTest running  **********\n\n")

      fd = Sys_Open ("file1")

      print ("Should print 4...\n")
      retval = Sys_Seek (fd, 4)
      if retval != 4
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print 0...\n")
      retval = Sys_Seek (fd, 0)
      if retval != 0
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print 72...\n")
      retval = Sys_Seek (fd, -1)
      if retval != 72
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print -1 (newCurrentPos is > file size)...\n")
      retval = Sys_Seek (fd, 73)
      if retval != -1
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print -1 (newCurrentPos is < -1)...\n")
      retval = Sys_Seek (fd, -2)
      if retval != -1
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print -1 (file not open)...\n")
      retval = Sys_Seek (3, 4)
      if retval != -1
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print -1 (bad file descriptor)...\n")
      retval = Sys_Seek (-1, 4)
      if retval != -1
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      print ("Should print 35...\n")
      retval = Sys_Seek (fd, 35)
      if retval != 35
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      i = Sys_Read (fd, &buffer[0], 30)
      print ("\nShould print '>>> come to the aid of their part<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 30
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("\nShould print 8...\n")
      retval = Sys_Seek (fd, 8)
      if retval != 8
        print ("\n\n*****  ERROR  *****\n\n")
      endIf
      printIntVar ("retval", retval)

      i = Sys_Read (fd, &buffer[0], 30)
      print ("\nShould print '>>>he time for all good men to co<<<'\n")
      print ("              >>>")
      print (& buffer)
      print ("<<<\n")
      if i != 30
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  WriteTest1  ---------------------------------

  var buffer3: array [20] of char = new array of char { 20 of '?' }
      readBuff: array [20] of char = new array of char { 20 of '?' }
      buffer4: array [20] of char = new array of char { 20 of '?' }

  function WriteTest1 ()
    --
    -- This is a basic test of the write operation.
    --
      var fd, i: int

      print ("\n**********  WriteTest1 running  **********\n\n")
      buffer3 = * "abcdefghijklmnopqrst"

      fd = Sys_Open ("file2")
      i = Sys_Write (fd, &buffer3[0], 20)
      if i != 20
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      -- Read entire file and print it...
      i = Sys_Seek (fd, 0)
      if i != 0
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Read (fd, &readBuff[0], 20)
      if i != 20
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      print ("\nShould print '>>>abcdefghijklmnopqrst<<<'\n")
      print ("              >>>")
      print (& readBuff)
      print ("<<<\n")

      -- Print an error message if problems...
      CheckFile (fd, true, 0, "abcdefghijklmnopqrst")

      buffer4 = * "ZYXWVUTSRQPONMLKJIHG"

      -- Write "ZYXWV" at location 13...
      i = Sys_Seek (fd, 13)
      if i != 13
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Write (fd, &buffer4[0], 5)
      if i != 5
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      -- Write "PONML" at location 5...
      i = Sys_Seek (fd, 5)
      if i != 5
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Write (fd, &buffer4[10], 5)
      if i != 5
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      -- Read entire file and print it...
      i = Sys_Seek (fd, 0)
      if i != 0
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Read (fd, &readBuff[0], 20)
      if i != 20
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      print ("\nShould print '>>>abcdePONMLklmZYXWVst<<<'\n")
      print ("              >>>")
      print (& readBuff)
      print ("<<<\n")

      -- Print an error message if problems...
      CheckFile (fd, true, 0, "abcdePONMLklmZYXWVst")

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  WriteTest2  ---------------------------------

  function WriteTest2 ()
    --
    -- This is tests error conditions on the write syscall.
    --
      var fd, i: int

      print ("\n**********  WriteTest2 running  **********\n\n")

      print ("Writing files which are not open...\n")

      i = Sys_Write (0, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Write (1, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Write (9, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("Writing files with invalid file descriptors...\n")

      i = Sys_Write (-1, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Write (-12345, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Write (12345, &buffer[0], 30)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      fd = Sys_Open ("file2")

      print ("Writing with negative sizeInBytes...\n")

      i = Sys_Write (0, &buffer[0], -1)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      i = Sys_Write (0, &buffer[0], -123123123)
      if i == -1
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("Make sure file size is unchanged...\n")

      i = Sys_Seek (fd, -1)
      if i == 21
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  WriteTest3  ---------------------------------

  function WriteTest3 ()
    --
    -- This function updates a file that is 3 sectors long.  It does 4
    -- writes (some of which span sector boundaries) and then checks that
    -- the data written is correct when read back.  It then repeats the
    -- the 4 writes and checking, using different data.
    --
      var fd: int

      print ("\n**********  WriteTest3 running  **********\n\n")

      fd = Sys_Open ("file3")

      DoWrite   (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")
      DoWrite   (fd, true, 8179,  "zyxwvutsrqponmlkjihgfedcba")
      DoWrite   (fd, true, 16371, "aaaaabbbbbcccccdddddeeeeef")
      DoWrite   (fd, true, 24550, "ggggghhhhhiiiiijjjjjkkkkkl")

      CheckFile (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")
      CheckFile (fd, true, 8179,  "zyxwvutsrqponmlkjihgfedcba")
      CheckFile (fd, true, 16371, "aaaaabbbbbcccccdddddeeeeef")
      CheckFile (fd, true, 24550, "ggggghhhhhiiiiijjjjjkkkkkl")

      DoWrite   (fd, true, 16371, "AAAABBBBCCCCDDDDEEEEFFFFGG")
      DoWrite   (fd, true, 0,     "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      DoWrite   (fd, true, 24550, "HHHHIIIIJJJJKKKKLLLLMMMMNN")
      DoWrite   (fd, true, 8179,  "ZYXWVUTSRQPONMLKJIHGFEDCBA")

      CheckFile (fd, true, 0,     "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      CheckFile (fd, true, 8179,  "ZYXWVUTSRQPONMLKJIHGFEDCBA")
      CheckFile (fd, true, 16371, "AAAABBBBCCCCDDDDEEEEFFFFGG")
      CheckFile (fd, true, 24550, "HHHHIIIIJJJJKKKKLLLLMMMMNN")

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-------------------------------  DoWrite  -------------------------------

  function DoWrite (fd: int, wantPrinting: bool, positionInFile: int, data: String)
    --
    -- This function is passed a position in the file and the data to write.
    -- It seeks to the position and writes the data.  It also checks
    -- to make sure the syscalls return expected values.
    --
      var i: int
      if wantPrinting
        print ("Writing \"")
        print (data)
        print ("\" to position ")
        printInt (positionInFile)
        print (" in file...\n")
      endIf
      i = Sys_Seek (fd, positionInFile)
      if i != positionInFile
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Write (fd, & data[0], data arraySize)
      if i == data arraySize
        if wantPrinting
          print ("Okay\n")
        endIf
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
    endFunction

-------------------------------  CheckFile  -------------------------------

  var checkBuffer: array [10000] of char = new array of char { 10000 of '?' }

  function CheckFile (fd: int, wantPrinting: bool, positionInFile: int, data: String)
    --
    -- This function is passed a position in the file and the data that
    -- we expect to find there.  It seeks to that position, reads from the file
    -- and checks to make sure the data we read was what was expected.
    --
    -- This function is not reentrant, since it uses a global buffer.
    --
      var i: int
      if checkBuffer arraySize < data arraySize
        print ("LOGIC ERROR: data should not be larger than our buffer size\n")
      endIf
      if wantPrinting
        print ("Checking that the file contains \"")
        print (data)
        print ("\" at position ")
        printInt (positionInFile)
        print ("...\n")
      endIf
      i = Sys_Seek (fd, positionInFile)
      if i != positionInFile
        print ("*****  ERROR: return value from Sys_Seek (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      i = Sys_Read (fd, &checkBuffer[0], data arraySize)
      if i != data arraySize
        print ("*****  ERROR: return value from Sys_Read (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf
      if MemoryEqual (&checkBuffer[0], &data[0], data arraySize)
        if wantPrinting
          print ("Okay.\n")
        endIf
      else
        print ("*****  ERROR: The data read (\"")
        for i = 0 to data arraySize - 1
          printChar (checkBuffer[i])
        endFor
        print ("\") is incorrect  *****\n")
      endIf

    endFunction

-----------------------------  WriteTest4  ---------------------------------

  function WriteTest4 ()
    --
    -- This function updates a file that is 3 sectors long.  First it writes
    -- some data in the file and checks to make sure it was written correctly.
    -- Then it forks off a child and waits for it.  The child will write to the
    -- file at the current position.  Then the parent will fork off another child
    -- which will write some more to the file.  After the second child finishes,
    -- the parent will read the file to make sure it is correct.
    --
      var fd, i, pid: int

      print ("\n**********  WriteTest4 running  **********\n\n")

      fd = Sys_Open ("file3")

      -- Initialize the file, which may contain stuff from previous runs...
      DoWrite   (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")
      CheckFile (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")

      i = Sys_Seek (fd, 3)

      -- Fork off a child to write some characters...
      pid = Sys_Fork ()
      if pid == 0
        DoWrite2 (fd, "0123")
        Sys_Exit (0)
      else
        i = Sys_Join (pid)
      endIf

      DoWrite2 (fd, "ABC")

      -- Fork off a child to write some characters...
      pid = Sys_Fork ()
      if pid == 0
        DoWrite2 (fd, "4567")
        Sys_Exit (0)
      else
        i = Sys_Join (pid)
      endIf

      DoWrite2 (fd, "DEF")

      -- Fork off a child to write some characters...
      pid = Sys_Fork ()
      if pid == 0
        DoWrite2 (fd, "89")
        Sys_Exit (0)
      else
        i = Sys_Join (pid)
      endIf

      DoWrite2 (fd, "GHI")

      -- Check that the file contains the right stuff...
      CheckFile (fd, true, 0, "abc0123ABC4567DEF89GHIwxyz")

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  DoWrite2  ---------------------------------

  function DoWrite2 (fd: int, data: String)
    --
    -- This function is passed some data which it writes at the current position.
    --
      var i: int
      print ("Writing \"")
      print (data)
      print ("\" to current position...\n")
      i = Sys_Write (fd, & data[0], data arraySize)
      if i == data arraySize
        print ("Okay\n")
      else
        print ("*****  ERROR: return value from Sys_Write (")
        printInt (i)
        print (") is incorrect  *****\n")
      endIf

    endFunction

-----------------------------  WriteTest5  ---------------------------------

  function WriteTest5 ()
    --
    -- This function updates a file that is 3 sectors long.  First it writes
    -- some data in the file and checks to make sure it was written correctly.
    -- Then it forks off several children.  Each child will open the file
    -- independently and will do lots of writes to different sectors.
    -- The parent will read the file repeatedly, until it sees that all children
    -- have written their last character.  Then the parent will check that the
    -- file contents are correct.
    --
      var fd, pid1, pid2, i: int

      print ("\n**********  WriteTest5 running  **********\n\n")

      fd = Sys_Open ("file3")

      -- Initialize the file, which may contain stuff from previous runs...
      DoWrite   (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")
      CheckFile (fd, true, 0,     "abcdefghijklmnopqrstuvwxyz")
      DoWrite   (fd, true, 8192,  "abcdefghijklmnopqrstuvwxyz")
      CheckFile (fd, true, 8192,  "abcdefghijklmnopqrstuvwxyz")
      Sys_Close (fd)

      -- Fork off the first child to write some characters.
      -- All of these writes are to even numbered positions.
      print ("Make sure that the activity of child 1 and child 2 is interleaved.\n")
      pid1 = Sys_Fork ()
      if pid1 == 0
        print ("......Child 1 beginning......\n")
        -- Wait for the forking of child 2 to finish.
        for i = 1 to 140
          Sys_Yield ()
        endFor
        fd = Sys_Open ("file3")
        DoWrite (fd, true, 0, "A")
        DoWrite (fd, true, 8204, "M")
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 2, "C")
        DoWrite (fd, true, 8206, "O")
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 4, "E")
        DoWrite (fd, true, 8208, "Q")
        DoWrite (fd, true, 6, "G")
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 8, "I")
        DoWrite (fd, true, 10, "K")
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 8210, "S")
        DoWrite (fd, true, 8212, "U")
        DoWrite (fd, true, 8214, "W")
        print ("......Child 1 ending......\n")
        Sys_Exit (0)
      endIf

      -- Fork off second child to write some other characters.
      -- All of these writes are to odd numbered positions.
      pid2 = Sys_Fork ()
      if pid2 == 0
        print ("......Child 2 beginning......\n")
        fd = Sys_Open ("file3")
        DoWrite (fd, true, 1, "B")
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 8205, "N")
        DoWrite (fd, true, 3, "D")
        DoWrite (fd, true, 8207, "P")
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 5, "F")
        DoWrite (fd, true, 8209, "R")
        DoWrite (fd, true, 8211, "T")
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 8213, "V")
        DoWrite (fd, true, 7, "H")
        DoWrite (fd, true, 9, "J")
        Sys_Yield ()
        Sys_Yield ()
        Sys_Yield ()
        DoWrite (fd, true, 11, "L")
        DoWrite (fd, true, 8215, "X")
        print ("......Child 2 ending......\n")
        Sys_Exit (0)
      endIf

      -- Wait for both children...
      i = Sys_Join (pid1)
      i = Sys_Join (pid2)

      -- Now check the file's contents...
      fd = Sys_Open ("file3")
      CheckFile (fd, true, 0,     "ABCDEFGHIJKLmnopqrstuvwxyz")
      CheckFile (fd, true, 8192,  "abcdefghijklMNOPQRSTUVWXyz")

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  WriteTest6  ---------------------------------

  var arr1: array [10000] of char = new array of char { 10000 of '?' }

  function WriteTest6 ()
    --
    -- This function updates a file that is 3 sectors long.  It does 2
    -- writes (which span sector boundaries) and then checks that
    -- the data written is correct when read back.  It then repeats the
    -- the 2 writes and checking, using different data.
    --
      var fd: int

      print ("\n**********  WriteTest6 running  **********\n\n")

      fd = Sys_Open ("file3")

      print ("Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n")
      FillArray (& arr1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

      print ("Writing 10000 bytes to pos 0...\n")
      DoWrite (fd, false, 0, &arr1)

      print ("Initializing data array to abcdefghijklmnopqrstuvwxyz...\n")
      FillArray (& arr1, "abcdefghijklmnopqrstuvwxyz")

      print ("Writing 10000 bytes to pos 10000...\n")
      DoWrite (fd, false, 10000, &arr1)

      CheckFile (fd, true, 0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      CheckFile (fd, true, 9958, "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPabcdefghijklmnopqrstuvwxyz")
      CheckFile (fd, true, 19958, "abcdefghijklmnopqrstuvwxyzabcdefghijklmnop")
      CheckFile (fd, true, 3900, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      CheckFile (fd, true, 13900, "abcdefghijklmnopqrstuvwxyz")

      print ("Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n")
      FillArray (& arr1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

      print ("Checking 10000 bytes at pos 0...\n")
      CheckFile (fd, false, 0, &arr1)

      print ("Initializing data array to abcdefghijklmnopqrstuvwxyz...\n")
      FillArray (& arr1, "abcdefghijklmnopqrstuvwxyz")

      print ("Checking 10000 bytes at pos 10000...\n")
      CheckFile (fd, false, 10000, &arr1)

      -- Now do it all again with different data

      print ("Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n")
      FillArray (& arr1, "ZYXWVUTSRQPONMLKJIHGFEDCBA")

      print ("Writing 10000 bytes to pos 0...\n")
      DoWrite (fd, false, 0, &arr1)

      print ("Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n")
      FillArray (& arr1, "zyxwvutsrqponmlkjihgfedcba")

      print ("Writing 10000 bytes to pos 10000...\n")
      DoWrite (fd, false, 10000, &arr1)

      CheckFile (fd, true, 0, "ZYXWVUTSRQPONMLKJIHGFEDCBA")
      CheckFile (fd, true, 9958,
         "ZYXWVUTSRQPONMLKJIHGFEDCBAZYXWVUTSRQPONMLKzyxwvutsrqponmlkjihgfedcba")
      CheckFile (fd, true, 19958, "zyxwvutsrqponmlkjihgfedcbazyxwvutsrqponmlk")
      CheckFile (fd, true, 3900, "ZYXWVUTSRQPONMLKJIHGFEDCBA")
      CheckFile (fd, true, 13900, "zyxwvutsrqponmlkjihgfedcba")

      print ("Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n")
      FillArray (& arr1, "ZYXWVUTSRQPONMLKJIHGFEDCBA")

      print ("Checking 10000 bytes at pos 0...\n")
      CheckFile (fd, false, 0, &arr1)

      print ("Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n")
      FillArray (& arr1, "zyxwvutsrqponmlkjihgfedcba")

      print ("Checking 10000 bytes at pos 10000...\n")
      CheckFile (fd, false, 10000, &arr1)

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  FillArray  ---------------------------------

  function FillArray (a: ptr to array of char, s: String)
    --
    -- This routine fills the array "a" with repeated copies of the
    -- string "s".
    --
      var toPtr: int = (&a[0]) asInteger
          fromPtr: int = (&s[0]) asInteger
          lastFullCopy, remaining: int
          sizeOfS: int = s arraySize
        lastFullCopy = (&a[a arraySize - 1]) asInteger - sizeOfS + 1
        while toPtr <= lastFullCopy
          MemoryCopy (toPtr, fromPtr, sizeOfS)
          toPtr = toPtr + sizeOfS
        endWhile
        remaining = (&a[a arraySize - 1]) asInteger - toPtr + 1
        if remaining > 0
          MemoryCopy (toPtr, fromPtr, remaining)
        endIf

    endFunction

-----------------------------  OpenTest3  ---------------------------------

  function OpenTest3 ()
    --
    -- Test the Open syscall with a long file name.  The file exists, but
    -- this should fail since the name is too long to move into a kernel buffer.
    -- Then try an Open using a filename that happens to cross a page boundary.
    --
      var fd: int
          p: int
          name: String = "file1234abcd"
      print ("\n**********  OpenTest3 running  **********\n\n")

      print ("Attempting to open an existing file whose name exceeds the maximum.\n")
      fd = Sys_Open ("FileWithVeryLongName012345678901234567890123456789")
      Check (fd, -1)
      if fd == -1
        print ("Okay.\n")
      else
        print ("*****  ERROR: Open returned an unexpected value ( ")
        printInt (fd)
        print (")  *****\n")
      endIf

      -- Next find a page boundary within arr1...
      p = (& arr1[9999]) asInteger
      p = (p & 0xffffe000) - 8
      MemoryCopy (p, name asInteger, name arraySize+4)    -- Copy string plus length

      print ("Attempting to open an existing file using a string which crosses a page boundary.\n")
      fd = Sys_Open (p asPtrTo array of char)
      if fd != -1
        print ("Okay.\n")
      else
        print ("*****  ERROR: Open returned a an unexpected value ( ")
        printInt (fd)
        print (")  *****\n")
      endIf

      print ("\n**********  Test Complete  **********\n\n")

    endFunction

-----------------------------  ExecTest1  ---------------------------------

  function ExecTest1 ()
    --
    -- This is a basic test of the Exec syscall.
    --
      var i: int

      print ("\n**********  ExecTest1 running  **********\n\n")

      print ("Should print 'Hello, world'...\n")
      i = Sys_Exec ("Program1")
      print ("*****  ERROR: Exec returned an unexpected value ( ")
      printInt (i)
      print (")  *****\n")

    endFunction

-----------------------------  ExecTest2  ---------------------------------

  function ExecTest2 ()
    --
    -- This is a basic test of the Exec syscall.
    --
      var i: int
          p: int
          name: String = "Program1"

      print ("\n**********  ExecTest2 running  **********\n\n")

      print ("Attempting to exec an existing file whose name exceeds the maximum.\n")
      i = Sys_Exec ("FileWithVeryLongName012345678901234567890123456789")
      Check (i, -1)

      print ("Attempting to exec an existing file which is not an executable.\n")
      i = Sys_Exec ("file1")
      Check (i, -1)

      -- Next find a page boundary within arr1...
      p = (& arr1[9999]) asInteger
      p = (p & 0xffffe000) - 8
      MemoryCopy (p, name asInteger, name arraySize+4)    -- Copy string plus length

      print ("Attempting to open an existing file using a string which crosses a page boundary.\n")
      print ("Should print 'Hello, World!!!'...\n")
      i = Sys_Exec (p asPtrTo array of char)
      print ("*****  ERROR: Exec returned an unexpected value ( ")
      printInt (i)
      print (")  *****\n")

    endFunction

-----------------------------  ExecTest3  ---------------------------------

  function ExecTest3 ()
    --
    -- This is a basic test of the Exec syscall.
    --
      var fd, i, counter: int

      print ("\n**********  ExecTest3 running  **********\n\n")
      fd = Sys_Open ("file3")
      if fd != 0
        print ("*****  ERROR: Sys_Open returned an unexpected value ( ")
        printInt (i)
        print (")  *****\n")
      endIf

      counter = 1
      i = Sys_Write (fd, (&counter) asPtrTo char, 4)

      print ("Should print 'Hello, world' 20 times...\n")
      i = Sys_Exec ("Program2")
      print ("*****  ERROR: Exec returned an unexpected value ( ")
      printInt (i)
      print (")  *****\n")

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
