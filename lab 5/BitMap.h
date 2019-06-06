header BitMap

  uses System

  -- Each instance of this class represents a string of bits.  When the
  -- object is initialized, the number of bits it will contain is specified.
  -- There are methods to set, clear, and test individual bits.
  --
  -- The bits are indexed with numbers from 0 to (size-1).
  --
  -- Each instance is represented by a array of integers.
  --
  -- NOTE: The "Init" method allocates memory, so it should only be used
  -- during kernel start-up.
  --
  -- NOTE: This class contains no synchronization.  If a BitMap is used by two
  -- our more threads, it is up to those threads to make sure that only one
  -- thread at a time touches a given BitMap object.

  class BitMap
    superclass Object
    fields
      numBits: int
      arrayOfWords: ptr to array of int
    methods
      Init (numberOfBits: int)        -- Allocates a private array to hold the bits.
      SetBit (bitNum: int)
      ClearBit (bitNum: int)
      IsBitSet (bitNum: int) returns bool
      Print ()                        -- Print by number, e.g., 2 4 5 7
      Print2 ()                       -- Print as bitstring, e.g., 00101101
      NumberOfClearBits () returns int
      FindZeroAndSet () returns int   -- Find 1st zero, set it, & return its index;
                                      -- Return -1 if all bits were already set.
  endClass

  functions
    TestBitMap ()                     -- Used in debugging this package.

endHeader
