header Main

  uses System, Thread, Synch

  const
    nrCustomers = 10
    nrChairs = 5
  var
    
    customers: Semaphore
    barbers: Semaphore
    access_lock: Mutex
    barber_done: Semaphore
    cut: Semaphore

  functions
    main ()

  class SleepingBarber
    superclass Object
    fields
      barberStatus: int
      customerStatus: ptr to array of char
      availChairs: int
    methods
      Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      barber(numOfChair: int)
      cut_hair()
      customer(Customer: int)
      get_haircut(Customer: int)
      printExample()
      printBarberStatus()
      printCustomerStatus(customer: int)
      printChairs()
  endClass
endHeader
