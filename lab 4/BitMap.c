code BitMap

  -- Harry Porter  --  September 18, 2004

  behavior BitMap

    method Init (numberOfBits: int)
      -- Initialize the BitMap instance, including the allocation of
      -- an array of words to hold the data.  The computation of
      -- numberOfWords is such that there will always be enough room
      -- for one extra bit.  This is so that there will always be at
      -- least one clear ("0") bit just beyond the bits holding the
      -- data.  This is so the "FindAndSet" method can use a faster
      -- algorithm.
      --
      -- NOTE: This routine calls "alloc".
      --
        var numWords: int = (numberOfBits / 32) + 1
        if numberOfBits <= 0
          FatalError ("In BitMap.Init, the numberOfBits is zero or less")
        endIf
        numBits = numberOfBits
        arrayOfWords = alloc array of int { numWords of 0 }
      endMethod

    method Print ()
      -- Print the bit vector showing (by number) which bits have
      -- been set.  For example:
      --     BitMap with the following bits set: 0 1 2 7 9 13 99
      --
        var i: int
        print ("BitMap with the following bits set:")
        for i = 0 to numBits-1
          if self.IsBitSet (i)
            print (" ")
            printInt (i)
          endIf
        endFor
        nl ()
      endMethod

    method Print2 ()
      -- Print the bit vector showing each bit as "0" or "1".  Spaces are
      -- inserted after every 8 bits for readability.  For example:
      --     BitMap: 11100101 00110110 11011
      --
        var i: int
        print ("BitMap:")
        for i = 0 to numBits-1
          if i%8 == 0
            print (" ")
          endIf
          if self.IsBitSet (i)
            print ("1")
          else
            print ("0")
          endIf
        endFor
        nl()
      endMethod

    method NumberOfClearBits () returns int
      -- This method returns the number of bits that are clear (i.e., "0").
        var i, count: int
        count = 0
        for i = 0 to numBits-1
          if !self.IsBitSet (i)
            count = count + 1
          endIf
        endFor
        return count
      endMethod

    method SetBit (bitNum: int)
      -- This method is passed the number of a bit; it sets the bit to "1".
      -- Bits are indexed with numbers from 0 through numberOfBits-1.
        var word: int
        if (bitNum < 0) || (bitNum >= numBits)
          FatalError ("Within BitMap.SetBit: invalid bitNum")
        endIf
        word = bitNum / 32
        arrayOfWords [word] = (arrayOfWords [word]) | (0x00000001 << bitNum % 32)
      endMethod

    method ClearBit (bitNum: int)
      -- This method is passed the number of a bit; it clears the bit to "0".
      -- Bits are indexed with numbers from 0 through numberOfBits-1.
        var word: int
        if (bitNum < 0) || (bitNum >= numBits)
          FatalError ("Within BitMap.ClearBit: invalid bitNum")
        endIf
        word = bitNum / 32
        arrayOfWords [word] = (arrayOfWords [word]) & ! (0x00000001 << bitNum % 32)
      endMethod

    method IsBitSet (bitNum: int) returns bool
      -- This method is passed the number of a bit; it returns TRUE iff that bit is
      -- set to "1".  Bits are indexed with numbers from 0 through numberOfBits-1.
        var word: int
        if (bitNum < 0) || (bitNum >= numBits)
          FatalError ("Within BitMap.IsBitSet: invalid bitNum")
        endIf
        word = bitNum / 32
        return (((arrayOfWords [word]) >> (bitNum % 32)) & 0x00000001) != 0
      endMethod

    method FindZeroAndSet () returns int
      -- This method finds the first bit that is clear (i.e., "0").  The sets
      -- it to "1" and returns index of the bit.  If all bits are already set,
      -- this method returns -1.
      --
      -- Note:  The arrayOfWords was initialized so that there is always at least
      -- one extra bit beyond the end, which will be zero.  This allows the
      -- search for a clear bit to use a faster algorithm, which finds the
      -- first clear bit, then tests to see if it is a legal bit.
      --
        var i, word: int
        -- Find the first word containing at least one clear bit.
        while arrayOfWords [i] == 0xffffffff
          i = i + 1
        endWhile
        -- Find the clear bit within that word.
        word = arrayOfWords [i]
        i = i * 32
        while (word & 0x00000001) != 0
          i = i + 1
          word = word >> 1
        endWhile
        -- See if this is a legal bit; if so set the bit and return its index.
        if i >= numBits
          return -1
        else
          self.SetBit (i)
          return i
        endIf
      endMethod

  endBehavior



  -- This function is used to test/debug the BitMap code.
  function TestBitMap ()
      var bm: BitMap = new BitMap
          i, j: int
      print ("Running test of 'BitMap' class....\n")
      bm.Init (40)

      bm.Print2 ()
      for i = 0 to 40
        print ("Calling FindZeroAndSet(")  printInt (i)   print (")...")
        j = bm.FindZeroAndSet ()
        print ("    returns... ")
        printInt (j)
        nl ()
        bm.Print2 ()
      endFor

      print ("Clear each of the bits...\n")
      for i = 0 to 39
        bm.ClearBit (i)
        bm.Print2 ()
      endFor

      print ("number clear = ")  printInt (bm.NumberOfClearBits ())  nl ()

      print ("Set each of the bits...\n")
      for i = 0 to 39
        bm.SetBit (i)
        bm.Print2 ()
        print ("number clear = ")  printInt (bm.NumberOfClearBits ())  nl ()
      endFor

      bm.ClearBit (3)
      bm.ClearBit (4)
      bm.ClearBit (5)
      bm.ClearBit (6)
      bm.ClearBit (32)
      bm.Print2 ()
      bm.Print ()

    endFunction

endCode
