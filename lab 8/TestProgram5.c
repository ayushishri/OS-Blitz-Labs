code TestProgram5


           -----------------------------------------------------
           ------                                         ------
           ------  Harry's Serial Driver Test Program     ------
           ------                                         ------
           -----------------------------------------------------


-----------------------------  main  ---------------------------------

var bigBuffer: array [9000] of char = new array of char { 9000 of '?' }

  function main ()
    --
    -- For each of the following tests, you should uncomment the call,
    -- compile and run this program, and hand in the output it produces.
    --

      --BasicSerialTest ()
      -- KeyTest ()
      -- EchoTest ()
      -- LineEchoTest ()
      -- EOFTest ()
      -- OpenCloseTerminalTest ()
      TerminalErrorTest ()
     -- Menu ()

      -- Sys_Shutdown ()
    endFunction

-----------------------------  BasicSerialTest  ---------------------------------

  function BasicSerialTest ()
    --
    -- This function performs a basic test of the Read and Write syscalls,
    -- when they are directed to the serial "terminal" device.
    --

      var fd, i: int
          ch: char
          UserBuffer: array [10] of char = new array of char { 10 of '?' }

      print ("\n==========  BasicSerialTest  ==========\n\n")
      print ("This test should be run in raw mode.\n\n")

      fd = Sys_Open ("terminal")
      if fd < 0
        printIntVar ("\n**************************  ERROR: Problems with open, fd", fd)
      endIf

      -- Try reading a single character...
      print ("Hit the \"a\" key.  Do not hit ENTER or RETURN...\n")
      ch = 'x'
      i = Sys_Read (fd, &ch, 1)
      -- Make sure the syscall returns 1...
      if i == 1
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 1; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if ch == 'a'
        print ("The buffer was updated correctly.\n")
      elseIf ch == 'x'
        print ("\n**************************  ERROR: The user-level buffer was not changed  **************************\n")
      else
        printCharVar ("\n**************************  ERROR: Something strange was stored in the user-level buffer, ch", ch)
      endIf

      -- Try reading a several characters...
      print ("\nPlease type \"abc\".  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 3)
      -- Make sure the syscall returns 3...
      if i == 3
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 3; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if StrCmp (&UserBuffer, "01abc56789") == 0
        print ("The buffer was updated correctly.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer is not correct  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      -- Try reading a several characters using 2 syscalls...
      print ("\nPlease type \"hello\".  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 3)
      -- Make sure the first syscall returns 3...
      if i == 3
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 3; returned value", i)
      endIf
      i = Sys_Read (fd, &UserBuffer[7], 2)
      -- Make sure the second syscall returns 2...
      if i == 2
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 2; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if StrCmp (&UserBuffer, "01hel56lo9") == 0
        print ("The buffer was updated correctly.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer is not correct  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      -- Check that (newline) control-J works correctly...
      print ("\nPlease type control-J.  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 1)
      -- Make sure the syscall returns 1...
      if i == 1
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 1; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if StrCmp (&UserBuffer, "01\x0a3456789") == 0
        print ("The buffer was updated correctly.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer is not correct  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      -- Check that (CR) control-M works correctly...
      print ("\nPlease type control-M.  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 1)
      -- Make sure the syscall returns 1...
      if i == 1
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 1; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if StrCmp (&UserBuffer, "01\x0a3456789") == 0
        print ("The buffer was updated correctly.\n")
      elseIf StrCmp (&UserBuffer, "01\x0d3456789") == 0
        print ("The buffer was updated correctly; The kernel failed to translate CR into a NEWLINE.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer is not correct  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      -- Check that (BACKSPACE) control-H works correctly...
      print ("\nPlease type control-H.  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 1)
      -- Make sure the syscall returns 1...
      if i == 1
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 1; returned value", i)
      endIf
      -- Make sure the buffer was modified correctly...
      if StrCmp (&UserBuffer, "01\x083456789") == 0
        print ("The buffer was updated correctly.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer is not correct  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      -- Check that EOF (Control-D) works correctly...
      print ("\nPlease type control-D.  Do not hit ENTER or RETURN...\n")
      StrCopy (&UserBuffer, "0123456789")
      i = Sys_Read (fd, &UserBuffer[2], 5)
      -- Make sure the syscall returns 0...
      if i == 0
        print ("Returned value is correct.\n")
      else
        printIntVar ("\n**************************  ERROR: Returned value from Read was not 0; returned value", i)
      endIf
      -- Make sure the buffer was not modified...
      if StrCmp (&UserBuffer, "0123456789") == 0
        print ("The buffer was not modified, as expected.\n")
      else
        print ("\n**************************  ERROR: The user-level buffer was modified  **************************\n")
        print ("              The buffer is \"")
        print (&UserBuffer)
        print ("\"\n")
      endIf

      print ("\n==========  Test Complete  ==========\n\n")
      Sys_Close (fd)

    endFunction

-----------------------------  KeyTest  ---------------------------------

  function KeyTest ()
    --
    -- This function reads a keystroke and then prints the value in hex.
    -- It repeats in a loop until 'q' is entered.
    --

      var fd, i: int
          ch: char

      print ("\n==========  KeyTest  ==========\n\n")
      print ("This test waits for a single character and then prints the value of that character.\n\n")
      print ("  1. Start by typing \"abcABC123\"\n")
      print ("  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n")
      print ("  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, ARROW KEYS and ESC.\n")
      print ("  4. See what happens when you hit cntl-D (EOF).\n")
      print ("  5. Try this test in cooked mode and in raw mode.\n\n")
      print ("This test will terminate when 'q' is typed.\n\n")
      print ("(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n")
      print ("To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n")

      fd = Sys_Open ("terminal")
      if fd < 0
        printIntVar ("\n**************************  ERROR: Problems with open, fd", fd)
      endIf

      while true
        -- Get one character...
        i = Sys_Read (fd, &ch, 1)
        if i == 0
          print ("\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n")
        elseIf i != 1
          printIntVar ("\n**************************  ERROR: Returned value from Read is incorrect; returned value", i)
        else
          print ("ch = ")
          printHex (ch)
          print (" (decimal ")
          printInt (ch)
          print (")\n")
          -- printHexVar ("ch", ch)
          -- printCharVar ("ch", ch)
        endIf
        -- If the character was 'q' then return to caller...
        if ch == 'q'
          print ("\n==========  Test Complete  ==========\n\n")
          Sys_Close (fd)
          return
        endIf
      endWhile

    endFunction

-----------------------------  EchoTest  ---------------------------------

  function EchoTest ()
    --
    -- In a loop, this function reads characters and echos them one
    -- at a time.
    --

      var fd, i: int
          ch: char

      print ("\n==========  EchoTest  ==========\n\n")

      print ("This test reads characters from the terminal.  It echoes each character, as it is received.\n\n")
      print ("  1. Start by typing \"abc\\n\"\n")
      print ("  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n")
      print ("  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n")
      print ("  4. See what happens when you hit cntl-D (EOF).\n")
      print ("  5. Try this test in cooked mode and in raw mode.\n")
      print ("  6. While in raw mode, see what happens with sequences from page 342 in the textbook.\n")
      print ("     For example, try typing these sequences:\n")
      print ("         ESC  [  7  m\n")
      print ("         ESC  [  5  A\n")
      print ("         control-g\n")
      print ("         up-arrow\n\n")
      print ("This test will terminate when 'q' is typed.\n\n")
      print ("(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n")
      print ("To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n")

      fd = Sys_Open ("terminal")
      if fd < 0
        printIntVar ("\n**************************  ERROR: Problems with open, fd", fd)
      endIf

      while true
        -- Get one character...
        i = Sys_Read (fd, &ch, 1)
        -- If the returned value is not 1...
        if i == 0
          print ("\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n")
        elseIf i != 1
          printIntVar ("\n**************************  ERROR: Returned value from Read is incorrect, i", i)
        else
          -- Write that character...
          i = Sys_Write (fd, &ch, 1)
          if i != 1
            printIntVar ("\n**************************  ERROR: returned value from Write incorrect, i", i)
          endIf
        endIf
        -- If the charactaer was 'q' then return to caller...
        if ch == 'q'
          print ("\n==========  Test Complete  ==========\n\n")
          Sys_Close (fd)
          return
        endIf
      endWhile

    endFunction

-----------------------------  LineEchoTest  ---------------------------------

  const BUFF_MAX = 30

  function LineEchoTest ()
    --
    -- In a loop, this function reads whole lines and echos them one
    -- after the next.
    --

      var fd, i, j: int
          smallBuff: array [BUFF_MAX] of char = new array of char { BUFF_MAX of '-' }

      print ("\n==========  LineEchoTest  ==========\n\n")
      print ("This program reads an entire line of input (up to ")
      printInt (BUFF_MAX)
      print (" characters) into a buffer.\n")
      print ("After this program gets the entire line, it prints it.  Since this program\n")
      print ("does not echo characters as typed, you will not see the characters until after\n")
      print ("the entire line is completed by typing ENTER, when running the emulator in raw\n")
      print ("mode.  In cooked mode, the host (Unix) will echo characters and then, after the\n")
      print ("line is complete, this program will (re) print the line.\n\n")
      print ("  1. Start by typing \"abc\\n\"\n")
      print ("  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n")
      print ("  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n")
      print ("  4. See what happens when you hit cntl-D (EOF).\n")
      print ("  5. See what happens when the size of the buffer is exceeded.\n")
      print ("  6. In cooked mode, see how the host (Unix) processes editing keys, such as backspace.\n\n")
      print ("This test will terminate when the first character entered is 'q'.\n\n")
      print ("(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n")
      print ("To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n")

      fd = Sys_Open ("terminal")
      if fd < 0
        printIntVar ("**************************  ERROR: Problems with open, fd", fd)
      endIf

      while true
        i = Sys_Read (fd, &(smallBuff[0]), BUFF_MAX)
        printIntVar ("\nNumber of characters entered", i)
        j = Sys_Write (fd,  &(smallBuff[0]), i)
        if i != j
          printIntVar ("\n**************************  ERROR: returned value from Write incorrect, j", j)
        endIf
        if smallBuff[0] == 'q'
          print ("\n==========  Test Complete  ==========\n\n")
          Sys_Close (fd)
          return
        endIf
      endWhile

    endFunction

-----------------------------  EOFTest  ---------------------------------

  function EOFTest ()
    --
    -- This function reads a keystroke and then prints the value in hex.
    -- It repeats in a loop until 'q' is entered.
    --

      var fd, i: int
          buff: array [6] of char = new array of char { '1','2','3','4','5','6' }

      print ("\n==========  EOFTest  ==========\n\n")
      print ("This test should be run in 'raw' mode.\n\n")
      print ("This function tests the handling of control-D.  Control-D is the\n")
      print ("enf-of-file character.  When typed, it should cause an immediate\n")
      print ("return from the Read syscall.  If no other characters have been\n")
      print ("typed first, then the count returned from Read will be zero, which\n")
      print ("many programs will interpret as 'end-of-file'.\n\n")

      fd = Sys_Open ("terminal")
      if fd < 0
        printIntVar ("\n**************************  ERROR: Problems with open, fd", fd)
      endIf

      print ("Please hit control-D next.  The ENTER key should not be necessary...\n")
      i = Sys_Read (fd, &(buff[0]), 6)
      Check (i, 0)
      if !StrEqual (&buff, "123456")
        print ("**************************  ERROR: buffer was modified  **************************\n")
      endIf

      print ("Please type \"abc\" followed by control-D.  The ENTER key should not be necessary...\n")
      i = Sys_Read (fd, &(buff[0]), 6)
      Check (i, 3)
      if !StrEqual (&buff, "abc456")
        print ("**************************  ERROR: buffer is incorrect  **************************\n")
      endIf

      print ("\n==========  Test Complete  ==========\n\n")
      Sys_Close (fd)

    endFunction

-----------------------------  OpenCloseTerminalTest  ---------------------------------

  function OpenCloseTerminalTest ()
    --
    -- Perform some tests of opening and closing the terminal.
    --
      var i, j, fd: int

      print ("\n==========  OpenCloseTerminalTest  ==========\n\n")

    -- Attempt to open and close "terminal" times.

      for j = 1 to 10
        print ("Opening 'terminal' 10 times...\n")
        for i = 0 to 9
          fd = Sys_Open ("terminal")
          if fd < 0
            print ("**************************  ERROR: Open returned a negative number (")
            printInt (fd)
            print (") indicating the open failed  **************************\n")
          elseIf fd != i  -- Should get a new fd each time!
            print ("**************************  ERROR: The syscall returns an unexpected fd (")
            printInt (fd)
            print (")  **************************\n")
          endIf
        endFor

        -- Close all 10 fileDesctiptors.
        print ("Closing all 10 fileDescriptors...\n")
        for i = 0 to 9
          Sys_Close (i)
        endFor
      endFor

      print ("Opening 'terminal' 10 times...\n")
      for i = 0 to 9
        fd = Sys_Open ("terminal")
        if fd < 0
          print ("**************************  ERROR: Open returned a negative number (")
          printInt (fd)
          print (") indicating the open failed  **************************\n")
        elseIf fd != i  -- Should get a new fd each time!
            print ("**************************  ERROR: The syscall returns an unexpected fd (")
            printInt (fd)
            print (")  **************************\n")
        endIf
      endFor

      print ("Attempting to open 'terminal' one more time, which should fail.\n")
      fd = Sys_Open ("terminal")
      if fd == -1
        print ("The syscall correctly returns -1.\n")
      else
        print ("**************************  ERROR: Open returned ")
        printInt (fd)
        print ("instead of -1 as expected  **************************\n")
      endIf

      -- Close all 10 fileDesctiptors.
      print ("Closing all 10 fileDescriptors...\n")
      for i = 0 to 9
        Sys_Close (i)
      endFor

      print ("\n==========  Test Complete  ==========\n\n")

    endFunction

-----------------------------  TerminalErrorTest  ---------------------------------

  function TerminalErrorTest ()
    --
    -- This tests a number of error and strange conditions that can arise with
    -- reading from the terminal.
    --
      var i, fd, p, save: int
          charPtr: ptr to char

      print ("\n==========  TerminalErrorTest  ==========\n\n")
      print ("(This test should be run in cooked mode.)\n")

      print ("Opening 'terminal' file...\n")
      fd = Sys_Open ("terminal")
      if fd < 0
        print ("**************************  ERROR: Opening terminal  **************************\n")
        return
      endIf

      print ("Reading with negative sizeInBytes...\n")
      i = Sys_Read (fd, & bigBuffer[0], -1)
      Check (i, -1)

      print ("Reading with negative sizeInBytes...\n")
      i = Sys_Read (fd, & bigBuffer[0], -123123123)
      Check (i, -1)
 
      print ("Reading with a pointer to a page which is read-only, which should be an error...\n")
      print ("Please type \"abc\\n\" next.\n")
      i = Sys_Read (fd, main asPtrTo char, 1)
      -- The spec is unclear about whether 0 or -1 should be returned here...
      if i != -1 && i != 0
        print ("**************************  ERROR: Read returned ")
        printInt (i)
        print ("instead of 0 or -1 as expected  **************************\n")
      endIf
      NextInput (fd, 'a')
 
      print ("Reading with a pointer which isn't in our address space, which should be an error...\n")
      print ("Please type \"xyz\\n\" next.\n")
      i = Sys_Read (fd, 0x0fffffff asPtrTo char, 1)
      -- The spec is unclear about whether 0 or -1 should be returned here...
      if i != -1 && i != 0
        print ("**************************  ERROR: Read returned ")
        printInt (i)
        print ("instead of 0 or -1 as expected  **************************\n")
      endIf
      NextInput (fd, 'x')

      -- Next get a pointer to the last word in our address space.
      -- (This is done by first finding the page containing the stack.
      p = ((&fd) asInteger & 0xffffe000) | 0x00001ffc

      -- Next, try a read of 5 bytes to the last word of our address space.
      -- The first 4 bytes should be okay but then there should be a problem.
      -- The OS should either
      --        Read 4 bytes and return 4
      --        Read 0 bytes and return -1
      -- (The spec is not clear about which should happen.)
      print ("Reading with a pointer which is near the end of our address space...\n")
      print ("Please type \"123456\\n\" next.\n")
      save = *(p asPtrTo int)
      i = Sys_Read (fd, p asPtrTo char, 5)
      if i == 4
        if 0x31323334 != *(p asPtrTo int)
          print ("**************************  ERROR: Return code is 4, but did not set the last 4 bytes correctly  **************************\n")
        endIf
        NextInput (fd, '5')
      elseIf i == -1
        if save != *(p asPtrTo int)
          print ("**************************  ERROR: Return code is -1 but the last 4 bytes have been altered  **************************\n")
        endIf
        NextInput (fd, '1')
      else
        Check (i, -1)
      endIf
      *(p asPtrTo int) = save

      -- Set 'p' to point to somewhere in bigBuffer which happens to be on
      -- a page boundary.
      p = ((&bigBuffer[8999]) asInteger - 10) & 0xffffe000
      charPtr = (p-3) asPtrTo char
      -- printHexVar ("&bigBuffer[0]", (&bigBuffer[0]) asInteger)
      -- printHexVar ("&bigBuffer[8999]", (&bigBuffer[8999]) asInteger)
      -- printHexVar ("charPtr", charPtr asInteger)

      print ("Reading with a pointer that crosses a page boundary...\n")
      print ("Please type \"abcdef\\n\" next.\n")
      MemoryCopy ((charPtr-3) asInteger, (& "QWEabcdef\nRTY"[0]) asInteger, 13)
      i = Sys_Read (fd, charPtr, 7)
      Check (i, 7)
      if ! MemoryEqual (charPtr-3, &("QWEabcdef\nRTY" [0]), 13)
        print ("**************************  ERROR: The characters were not stored in memory correctly  **************************\n")
      endIf

      print ("Writing with negative sizeInBytes...\n")
      i = Sys_Write (fd, & bigBuffer[0], -1)
      Check (i, -1)

      print ("Writing with negative sizeInBytes...\n")
      i = Sys_Write (fd, & bigBuffer[0], -123123123)
      Check (i, -1)

      print ("Writing with a pointer that crosses a page boundary...\n")
      print ("\n\n==== This should print \"GREETINGS\" next ====\n")
      print ("                        ")
      MemoryCopy (charPtr asInteger, (& "GREETINGS"[0]) asInteger, 9)
      i = Sys_Write (fd, charPtr, 9)
      nl ()
      Check (i, 9)
 
      print ("Writing with a pointer to a page which is read-only, which should be okay...\n")
      print ("\n\n==== This should print \"KERNEL CODE\" next ====\n")
      print ("                        ")
      i = Sys_Write (fd, & ("KERNEL CODE"[0]), 11)
      nl ()
      if i != 11
        print ("**************************  ERROR: Write returned ")
        printInt (i)
        print ("instead of 11 as expected  **************************\n")
      endIf
 
      print ("\nWriting with a pointer which isn't in our address space, which should be an error...\n")
      i = Sys_Write (fd, 0x0fffffff asPtrTo char, 1)
      -- The spec is unclear about whether 0 or -1 should be returned here...
      if i != -1 && i != 0
        print ("**************************  ERROR: Write returned ")
        printInt (i)
        print ("instead of 0 or -1 as expected  **************************\n")
      else
        print ("Okay.\n")
      endIf

      Sys_Close (fd)

      print ("\n==========  Test Complete  ==========\n\n")

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
        print ("**************************  ERROR: Return value from syscall (")
        printInt (i)
        print (") is incorrect  **************************\n")
      endIf
      
    endFunction

-----------------------------  NextInput  ---------------------------------

  function NextInput (fd: int, expectedChar: char)
    --
    -- This function makes sure the next character to be read from fileDescriptor
    -- 'fd' is 'expectedChar', and prints an error if the next input character
    -- is not what is expected.  It then reads the rest of the line.
    --
      var i: int
          inputChar: char
          buffer: array [100] of char = new array of char { 100 of '?' }

      -- Read the next character...
      i = Sys_Read (fd, & inputChar, 1)
      if i != 1
        print ("**************************  ERROR: Return value from Read (")
        printInt (i)
        print (") is incorrect  **************************\n")
      endIf

      -- Make sure it matches the 'expectedChar'...
      if inputChar == expectedChar
        print ("Okay.\n")
      else
        print ("**************************  ERROR: The next input character is expected to be \'")
        printChar (expectedChar)
        print ("\' but was \'")
        printChar (inputChar)
        print ("\' instead  **************************\n")
      endIf

      -- If the last character read ws not \n, then readin the rest of the line...
      if inputChar != '\n'
        i = Sys_Read (fd, & buffer[0], buffer arraySize)
      endIf
      
    endFunction

-----------------------------  Menu  ---------------------------------

  const stdin  = 0
        stdout = 1

  function Menu ()
    --
    -- This function prints a menu and reads in a selection.  It then
    -- executes the test in question.
    --
      var fd, pid, i: int
          c: char
      print ("Opening 'stdin' and 'stdout'...\n")
      fd = Sys_Open ("terminal")
      Check (fd, stdin)
      fd = Sys_Open ("terminal")
      Check (fd, stdout)
      Print ("This menu works best in raw mode.\n\n")
      while true
        Print ("====================  MENU  ====================\n")
        Print ("  1  -  BasicSerialTest\n")
        Print ("  2  -  KeyTest\n")
        Print ("  3  -  EchoTest\n")
        Print ("  4  -  LineEchoTest\n")
        Print ("  5  -  EOFTest\n")
        Print ("  6  -  OpenCloseTerminalTest\n")
        Print ("  7  -  TerminalErrorTest\n")
        Print ("  8  -  Shell\n")
        Print ("  9  -  Quit\n")
        Print ("Please select by number: ")
        c = GetChar ()
        PutChar (c)
        PutChar ('\n')
        switch c
          case '1': 
               BasicSerialTest ()
               break
          case '2': 
               KeyTest ()
               break
          case '3': 
               EchoTest ()
               break
          case '4': 
               LineEchoTest ()
               break
          case '5': 
               EOFTest ()
               break
          case '6':
               Sys_Close (stdin)
               Sys_Close (stdout)
               OpenCloseTerminalTest ()
               fd = Sys_Open ("terminal")
               Check (fd, stdin)
               fd = Sys_Open ("terminal")
               Check (fd, stdout)
               break
          case '7': 
               TerminalErrorTest ()
               break
          case '8': 
               pid = Sys_Fork ()
               if pid == 0
                 i = Sys_Exec ("sh")
                 Print ("Unable to execute shell\n")
                 Sys_Exit (-1)
               else
                 i = Sys_Join (pid)
               endIf
               break
          case '9': 
               Sys_Shutdown ()
          default:
               Print ("Invalid entry; enter a single digit.\n")
               break
        endSwitch
      endWhile

    endFunction

-----------------------------  Print  ---------------------------------

  function Print (str: String)
    --
    -- This function is passed a string.  It prints it to stdout.
    --
      var i: int
      i = Sys_Write (stdout, &str[0], str arraySize)     
    endFunction

-----------------------------  GetChar  ---------------------------------

  function GetChar () returns char
    --
    -- This function reads a single character from stdin and returns it.
    --
      var c: char
          i: int
      i = Sys_Read (stdout, &c, 1)
      return c    
    endFunction

-----------------------------  PutChar  ---------------------------------

  function PutChar (c: char)
    --
    -- This function writes a single character to stdout.
    --
      var i: int
      i = Sys_Write (stdout, &c, 1)
    endFunction

endCode
