code Main

  -- OS Class: Project 3
  --
  -- <Ahmed Rosanally>
  --

  -- This package contains the following:
  --     Gaming Parlor
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      gamingparlor ()
      ThreadFinish ()
    endFunction

------------------------------- Gaming Parlor ----------------------------------
  var
    GP: GamingParlor = new GamingParlor
    -- Hint: Some variables are defined in "Task3.h".
    customers: array[8] of Thread = new array of Thread {8 of new Thread}

  function gamingparlor()
    GP.Init()
    
    customers[0].Init ("A")
    customers[0].Fork(GameOut, 0)
    customers[1].Init ("B")
    customers[1].Fork(GameOut, 0)
    customers[2].Init ("C")
    customers[2].Fork(GameOut, 1)
    customers[3].Init ("D")
    customers[3].Fork(GameOut, 1)
    customers[4].Init ("E")
    customers[4].Fork(GameOut, 2)
    customers[5].Init ("F")
    customers[5].Fork(GameOut, 2)
    customers[6].Init ("G")
    customers[6].Fork(GameOut, 3)
    customers[7].Init ("H")
    customers[7].Fork(GameOut, 3)
    
  endFunction

  function GameOut(currentGame: int) --each group plays its game 5 times if GamesPlayed exceeds 5
    var GamesPlayed: int             --group can no longer come back to parlour
    GamesPlayed = 0 --group has initially 0 games played
    while GamesPlayed < 5
      GamesPlayed = GamesPlayed + 1
        GP.Request(group_names[currentGame],dice_per_group[currentGame])
	currentThread.Yield()
        GP.Return(group_names[currentGame],dice_per_group[currentGame])
      endWhile
    endFunction

  behavior GamingParlor

    method Init()
      dice_available = total_dice
      lock = new Mutex
      lock.Init()
      diceAvail = new Condition
      diceAvail.Init()
    endMethod

    method Request(name: char, nr_of_dice: int)
      lock.Lock()
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice
        diceAvail.Wait(&lock)
      endWhile
      dice_available = dice_available - nr_of_dice
      self.Print(name, "proceeds with", nr_of_dice)
      lock.Unlock()
    endMethod

    method Return(name: char, nr_of_dice: int)
      lock.Lock()
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
      diceAvail.Broadcast(&lock)
      lock.Unlock()
    endMethod

    method PrintExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- A requests
      self.Request(group_names[0], 4)
      -- B requests
      self.Request(group_names[1], 4)
      -- B returns
      self.Return(group_names[1], 4)
      -- A returns
      self.Return(group_names[0], 4)
      -- C requests
      self.Request(group_names[2], 5)
      -- C returns
      self.Return(group_names[2], 5)

    endMethod

    method Print(name: char, str: String, nr_of_dice: int)
    --
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.
    --
       printChar(name)
       print(" ")
       print(str)
       print(" ")
       printInt(nr_of_dice)
       nl()
       print("------------------------------Number of dice now avail = ")
       printInt(dice_available)
       nl()
    endMethod
  endBehavior

endCode
