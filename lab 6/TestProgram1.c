code TestProgram1

-----------------------------  TestProgram1  ---------------------------------

  const
    FILENAME = "MyFileName"
    NAME_OF_PROGRAM2 = "TestProgram2"

  var 
    buff: array [10] of char = new array of char { 10 of 'x' }
    arr1: array [10000] of char = new array of char { 10000 of '?' }

  function main ()
    --
    -- This program is used to make sure parameters can be passed to and from
    -- the kernel during the syscalls.  It is also used to test the "Exec" syscall.
    --
      print ("User-level program 'TestProgram1' is running...\n")
      TestSyscallParameterPassing ()
      TestExec ()
      Sys_Shutdown ()
    endFunction

------------------------  TestSyscallParameterPassing  ----------------------------

  function TestSyscallParameterPassing ()
    --
    -- This function calls each of the kernel functions.  Arguments are passed
    -- to the kernel function to make sure that the syscall mechanism is working
    -- properly and that arguments can be passed and results returned.  However,
    -- the arguments that are passed are meaningless values.
    --
    -- This function contains a lot of print statements, designed to make
    -- the output easier to check.
    --
      var i: int
          fileNamePtr: String

      print ("\n***** Testing Syscall Parameter Passing *****\n")

      -- The array "arr1" is so big it must contain a page boundary.  Find
      -- a page boundary within arr1 and set p to point 8 bytes before it.
      i = (& arr1[9900]) asInteger
      i = (i & 0xffffe000) - 8

      -- Copy string plus length so that the characters cross the page boundary.
      MemoryCopy (i, FILENAME asInteger, FILENAME arraySize+4)

      -- Set "fileNamePtr" to point the string "MyFileName", which happens to
      -- cross a page boundary.
      fileNamePtr = i asPtrTo array of char

      print ("\n***** About to call Sys_Yield...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Yield invoked!\n\n")

      Sys_Yield ()

      print ("\n***** About to call Sys_Fork...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Fork invoked!\n\n")

      i = Sys_Fork ()
      if i != 1000
        print ("\n*************** ERROR: Bad return value from Sys_Fork\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Join...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Join invoked!\n")
      print ("*****     processID = 1111\n\n")

      i = Sys_Join (1111) 
      if i != 2000
        print ("\n*************** ERROR: Bad return value from Sys_Join\n")
        printIntVar ("  return value", i)
      endIf

-- The following code can be used to make sure you are getting the right
-- arguments to Handle_Sys_Exec, but this code will not work properly
-- once you have implemented Handle_Sys_Exec

/*
      print ("\n***** About to call Sys_Exec...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Exec invoked!\n")
      print ("*****     virt addr of filename = 0x0000BFF8\n")
      print ("*****     filename = MyFileName\n\n")

      i = Sys_Exec (fileNamePtr)
      if i != 3000
        print ("\n*************** ERROR: Bad return value from Sys_Exec\n")
        printIntVar ("  return value", i)
      endIf
*/

      print ("\n***** About to call Sys_Create...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Create invoked!\n")
      print ("*****     virt addr of filename = 0x0000BFF8\n")
      print ("*****     filename = MyFileName\n\n")

      i = Sys_Create (fileNamePtr)
      if i != 4000
        print ("\n*************** ERROR: Bad return value from Sys_Create\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Open...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Open invoked!\n")
      print ("*****     virt addr of filename = 0x0000BFF8\n")
      print ("*****     filename = MyFileName\n\n")

      i = Sys_Open (fileNamePtr)
      if i != 5000
        print ("\n*************** ERROR: Bad return value from Sys_Open\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Read...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Read invoked!\n")
      print ("*****     fileDesc = 2222\n")
      print ("*****     virt addr of buffer = 0x0000B0B0\n")
      print ("*****     sizeInBytes = 3333\n\n")

      i = Sys_Read (2222, &buff[0], 3333)
      if i != 6000
        print ("\n*************** ERROR: Bad return value from Sys_Read\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Write...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Write invoked!\n")
      print ("*****     fileDesc = 4444\n")
      print ("*****     virt addr of buffer = 0x0000B0B0\n")
      print ("*****     sizeInBytes = 5555\n\n")

      i = Sys_Write (4444, &buff[0], 5555)
      if i != 7000
        print ("\n*************** ERROR: Bad return value from Sys_Write\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Seek...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Seek invoked!\n")
      print ("*****     fileDesc = 6666\n")
      print ("*****     newCurrentPos = 7777\n\n")

      i = Sys_Seek (6666, 7777)
      if i != 8000
        print ("\n*************** ERROR: Bad return value from Sys_Seek\n")
        printIntVar ("  return value", i)
      endIf

      print ("\n***** About to call Sys_Close...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Close invoked!\n")
      print ("*****     fileDesc = 8888\n\n")

      Sys_Close (8888)

      print ("\n***** About to call Sys_Exit...\n")
      print ("***** Should print:\n")
      print ("*****     Handle_Sys_Exit invoked!\n")
      print ("*****     returnStatus = 9999\n\n")

      Sys_Exit (9999)

-- The following code can be used to make sure you are invoking
-- Handle_Sys_Shutdown properly, but this code will prematurely terminate
-- the tests, once you have implemented Handle_Sys_Shutdown.

/*
      print ("\n***** About to call Sys_Shutdown...\n")
      print ("***** Should print:\n")
      print ("*****     FATAL ERROR in UserProgram: \"Syscall 'Shutdown' was invoked by a user thread\" -- TERMINATING!\n")

      Sys_Shutdown ()

      print ("\n*************** ERROR: Execution should not continue after Shutdown\n")
*/

      print ("\n***** Syscall Test Complete *****\n")

    endFunction

-----------------------------  TestExec  ---------------------------------

  function TestExec ()
    --
    -- This function is used to test the "Exec" syscall.  It will execute an
    -- Exec syscall.  If there are no errors, it should not return.  If there
    -- are errors, it will print the error code and the invoke the "Shutdown"
    -- syscall.
    --
      var i: int
          fileNamePtr: String

      print ("\n***** Testing Exec Syscall *****\n")

      print ("\n***** About to call Sys_Exec with a non-existant file...\n")
      print ("***** Should print:\n")
      print ("*****     Okay\n\n")
      i = Sys_Exec ("GarbageFilename")
      if i != -1
        print ("\n*************** ERROR: Bad return value from Sys_Exec\n")
        printIntVar ("  return value", i)
      else
        print ("Okay\n")
      endIf

      print ("\n***** About to call Sys_Exec with an overly long file name...\n")
      print ("***** Should print:\n")
      print ("*****     Okay\n\n")
      -- This name of this file exceeds the maximum length (MAX_STRING_SIZE)
      -- so Exec should fail.
      i = Sys_Exec ("FileWithVeryLongName012345678901234567890123456789")
      if i != -1
        print ("\n*************** ERROR: Bad return value from Sys_Exec\n")
        printIntVar ("  return value", i)
      else
        print ("Okay\n")
      endIf

      -- The array "arr1" is so big it must contain a page boundary.  Find
      -- a page boundary within arr1 and set p to point 8 bytes before it.
      i = (& arr1[9900]) asInteger
      i = (i & 0xffffe000) - 8

      -- Copy string plus length so that the characters cross the page boundary.
      MemoryCopy (i, NAME_OF_PROGRAM2 asInteger, NAME_OF_PROGRAM2 arraySize+4)

      -- Set "fileNamePtr" to point the string "TestProgram2", which happens to
      -- cross a page boundary.
      fileNamePtr = i asPtrTo array of char

      print ("\n***** About to perform a successful Exec and jump to TestProgram2...\n")
      print ("***** Should print:\n")
      print ("*****     User-level program 'TestProgram2' is running!\n\n")

      i = Sys_Exec (fileNamePtr)

      printIntVar ("***************  ERROR IN EXEC; return code", i)

    endFunction

endCode
