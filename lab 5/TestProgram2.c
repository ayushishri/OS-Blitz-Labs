code TestProgram2

-----------------------------  TestProgram2  ---------------------------------

  function main ()

      print ("User-level program 'TestProgram2' is running!\n")

      print ("\n***** About to call Sys_Shutdown...\n")
      print ("***** Should print:\n")
      print ("*****     FATAL ERROR in UserProgram: \"Syscall 'Shutdown' was invoked by a user thread\" -- TERMINATING!\n")

      Sys_Shutdown ()

      print ("\n*************** ERROR: Execution should not continue after Shutdown\n")

    endFunction

endCode
