header Main

  uses System, Thread, Synch

  const
    total_dice = 8
    total_groups = 8
  var
    group_names: array [total_groups] of char
                    = new array of char { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H' }
    dice_per_group: array [total_groups] of int
                    = new array of int { 4, 4, 5, 5, 2, 2, 1, 1 }
  functions
    main ()

  class GamingParlor
    superclass Object
    fields
      dice_available: int	
      lock: Mutex
      diceAvail: Condition
    methods
      Init()
      Request(name: char, nr_of_dice: int)
      Return(name: char, nr_of_dice: int)
      PrintExample()
      Print(name: char, str: String, nr_of_dice: int)
  endClass

endHeader
