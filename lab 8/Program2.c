code Program2

-----------------------------  main  ---------------------------------
--
-- This program prints a message and then invokes the Exec syscall on itself.
-- To prevent infinite recursion, we maintain a counter and we store that
-- counter in the first 4 bytes of a file, which is assumed to be open upon entry.
--
-- The point of this test is to see whether the system stack is getting
-- used up on every call to "Exec".
--
-- It also makes sure that files that are open before Exec are open afterwards.
--

const fd = 0
      NUMBER_OF_ITERATIONS = 20

  function main ()
      var i, counter: int

      print ("Hello, world      ")

      -- Get the current counter value...
      i = Sys_Seek (fd, 0)
      if i != 0
        print ("\n*****  ERROR: Unexpected return value from Sys_Seek (")
        printInt (i)
        print (")  *****\n")
        Sys_Exit (-1)
      endIf
      i = Sys_Read (fd, (&counter) asPtrTo char, 4)
      if i != 4
        print ("\n*****  ERROR: Unexpected return value from Sys_Read  *****\n")
        Sys_Exit (-1)
      endIf

      -- Print the current value...
      printInt (counter)
      nl ()

      -- If the counter looks good...
      if counter > 0 && counter < NUMBER_OF_ITERATIONS

        -- Increment it and update the file...
        counter = counter + 1
        i = Sys_Seek (fd, 0)
        if i != 0
          print ("\n*****  ERROR: Unexpected return value from Sys_Seek  *****\n")
          Sys_Exit (-1)
        endIf
        i = Sys_Write (fd, (&counter) asPtrTo char, 4)
        if i != 4
          print ("\n*****  ERROR: Unexpected return value from Sys_Write  *****\n")
          Sys_Exit (-1)
        endIf

        -- Invoke "Exec" syscall on this very program...
        i = Sys_Exec ("Program2")
        print ("\n*****  ERROR: Unexpected return value from Sys_Exec  *****\n")
        Sys_Exit (-1)

      -- If the counter is at the end...
      elseIf counter == NUMBER_OF_ITERATIONS
        print ("\n**********  Test Complete  **********\n\n")
        Sys_Exit (0)

      -- If the counter has any other value...
      else
        print ("\n*****  ERROR: Unexpected value of counter  *****\n")
        Sys_Exit (-1)
      endIf

    endFunction

endCode
