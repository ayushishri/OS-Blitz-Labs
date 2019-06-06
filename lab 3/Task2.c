code Main

  -- OS Class: Project 3
  --
  -- <Ahmed Rosanally>
  --

  -- This package contains the following:
  --     Sleeping Barber
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      sleepingbarber ()
      ThreadFinish ()
    endFunction

-----------------------------  Sleeping Barber --------------------------------
  -- In the Producer/Consumer and Dining Philosophers problems, we tried to print the activity
  -- of each thread in a different column so that you could see what each thread was doing.
  -- The actual events in this problem can be reduced to a single letter, such as:
  --
  --         E = Enter
  --         S = Sit in waiting chair
  --         B = Begin haircut
  --         F = Finish haircut
  --         L = Leave
  --         start = Barber begins haircut
  --         end = Barber ends haircut
  --
  -- The status of the chairs should be printed every time you print a line. If there are 5
  -- chairs, of which 2 are occupied, print 2 X's and 3 -'s.  For example:
  --
  --         XX---
  --

  enum Start, End

  var
    sb: SleepingBarber
    bStatus: int = End
    cStatus: array[nrCustomers] of char = 
             new array of char { nrCustomers of 'L' }
    Barber: Thread

    -- Hint: Some variables are defined in "Task2.h".	

  function cust(Customer: int)
     sb.customer(Customer)
  endFunction

  function barb(numofChair: int)
    sb.barber(numofChair)
  endFunction

  function sleepingbarber()
    var
      i: int
      Customers: array[10] of Thread = new array of Thread {10 of new Thread}

    print("THE SLEEPING BARBER SIMULATION")
    nl()
    -- print initial line
    for i = 0 to nrChairs
        printChar(' ')
    endFor
    print("Barber\t")
    for i = 0 to nrCustomers - 1
        printInt(i+1)
        printChar('\t')
    endFor
    nl()
    sb = new SleepingBarber
    sb.Init(bStatus, &cStatus, nrChairs)

    -- Remove the following line in your implementation
    -- This is only an example.
    --sb.printExample()

    -- Add more code below.
    
    cut = new Semaphore
    cut.Init(0)
    customers = new Semaphore
    customers.Init(0)
    barbers = new Semaphore
    barbers.Init(0)
    access_lock = new Mutex
    access_lock.Init()
    barber_done = new Semaphore
    barber_done.Init(0)
    
    Barber = new Thread
    Barber.Init("B")
    Barber.Fork(barb, nrChairs)

    Customers[0].Init ("1")
    Customers[0].Fork(cust, 0)
    Customers[1].Init ("2")
    Customers[1].Fork(cust, 1)
    Customers[2].Init ("3")
    Customers[2].Fork(cust, 2)
    Customers[3].Init ("4")
    Customers[3].Fork(cust, 3)
    Customers[4].Init ("5")
    Customers[4].Fork(cust, 4)
    Customers[5].Init ("6")
    Customers[5].Fork(cust, 5)
    Customers[6].Init ("7")
    Customers[6].Fork(cust, 6)
    Customers[7].Init ("8")
    Customers[7].Fork(cust, 7)
    Customers[8].Init ("9")
    Customers[8].Fork(cust, 8)
    Customers[9].Init ("10")
    Customers[9].Fork(cust, 9)

  endFunction



  -- implementation of SleepingBarber class
  behavior SleepingBarber
    method Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      self.barberStatus = bStat
      self.customerStatus = cStat
      self.availChairs = numOfChair
    endMethod

    method barber(numOfChair: int)
      while true

        customers.Down()
        access_lock.Lock()
        self.availChairs = self.availChairs + 1
        access_lock.Unlock()
	self.barberStatus = Start
	self.printBarberStatus()
        barbers.Up()
        self.cut_hair()
	self.barberStatus = End
	self.printBarberStatus()
        barber_done.Up()
        endWhile

    endMethod

    method cut_hair()
	cut.Down()
        currentThread.Yield()
    	cut.Down()
    endMethod

    method customer(Customer: int)
        var
          numCuts: int
          cutsReceived: int
        cutsReceived = 0
        numCuts = 3
        while cutsReceived < numCuts
          access_lock.Lock()
	  self.customerStatus[Customer] = 'E'
          self.printCustomerStatus(Customer)
          if (self.availChairs > 0)
            self.availChairs = self.availChairs - 1
            self.customerStatus[Customer] = 'S'
            self.printCustomerStatus(Customer)
            access_lock.Unlock()
            customers.Up()
            barbers.Down()
            self.get_haircut(Customer)
            barber_done.Down()
            cutsReceived = cutsReceived + 1
          else
            access_lock.Unlock()
          endIf
          self.customerStatus[Customer] = 'L'
          self.printCustomerStatus(Customer)
        endWhile
      endMethod

    method get_haircut(Customer: int)
	cut.Up()
	self.customerStatus[Customer] = 'B'
        self.printCustomerStatus(Customer)
        currentThread.Yield()
	self.customerStatus[Customer] = 'F'
        self.printCustomerStatus(Customer)
	cut.Up()
    endMethod

    method printExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- Customer 1 enter.
      self.customerStatus[0] = 'E'
      self.printCustomerStatus(0)

      -- Customer 1 sit in waiting chair.
      self.customerStatus[0] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(0)

      -- Customer 2 enter.
      self.customerStatus[1] = 'E'
      self.printCustomerStatus(1)

      -- Customer 2 sit in waiting chair.
      self.customerStatus[1] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(1)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 1 begins haircut.
      self.customerStatus[0] = 'B'
      self.printCustomerStatus(0)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 1 finish haircut.
      self.customerStatus[0] = 'F'
      self.printCustomerStatus(0)

      -- Customer 1 leave.
      self.customerStatus[0] = 'L'
      self.printCustomerStatus(0)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 2 begins haircut.
      self.customerStatus[1] = 'B'
      self.printCustomerStatus(1)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 2 finish haircut.
      self.customerStatus[1] = 'F'
      self.printCustomerStatus(1)

      -- Customer 2 leave.
      self.customerStatus[1] = 'L'
      self.printCustomerStatus(1)
      -----------------------------  End  -----------------------------
    endMethod

    method printBarberStatus()
      var
         oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      self.printChairs()
      if self.barberStatus == Start
         print("Start\n")
      else
         print("End\n")
      endIf
      oldStatus = SetInterruptsTo (oldStatus)
    endMethod

    method printCustomerStatus(customer: int)
      var i: int
          oldStatus: int
      oldStatus = SetInterruptsTo (DISABLED)
      self.printChairs()
      print("      \t")
      for i = 0 to nrCustomers - 1
        if (i != customer)
          printChar(' ')
        else
          printChar(self.customerStatus[i])
        endIf
        printChar('\t')
      endFor
      nl()
      oldStatus = SetInterruptsTo (oldStatus)
    endMethod

    method printChairs()
      var i: int
      for i = self.availChairs + 1 to nrChairs
        printChar('X')
      endFor
      for i = 1 to self.availChairs
        printChar('-')
      endFor
      printChar(' ')
    endMethod

  endBehavior

endCode
