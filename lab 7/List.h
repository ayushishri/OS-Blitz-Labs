header List

  uses System

  class List [T: Listable]

    -- This class is used to implement a singly-linked list of elements.
    -- Each element has a "next" pointer and this class maintains pointer
    -- to the first element ("head") and to the last element ("last").
    --
    -- Elements may be added to the list at either end (using "AddToFront"
    -- and "AddToEnd"), but may only be removed from the front using
    -- "Remove".
    --
    -- The method "ApplyToEach" can be used to apply a single function
    -- to each element in the list, one by one.  The argument to
    -- "ApplyToEach" is the function to be applied to each element.
    --
    -- The elements in the list may be of any class T, as long as it
    -- has been made a subclass of "Listable", which ensures that the
    -- objects will have a "next" pointer and a "key".
    --
    -- This class can also be used to implement a sorted list where
    -- each element has an associated integer key.  For sorted lists,
    -- the elements should be added using "SortedInsert" (not "AddToEnd"
    -- or "AddToFront").  The elements may only be removed from the front
    -- but there is a provision for obtaining the key of the element
    -- just removed as well as the element itself, using "SortedRemove".

    superclass Object
    fields
      first: ptr to T
      last: ptr to T
    methods
      AddToFront (p: ptr to T)
      AddToEnd (p: ptr to T)
      Remove () returns ptr to T
      IsEmpty () returns bool
      ApplyToEach (f: ptr to function (ptr to T))
      SortedInsert (p: ptr to T, k: int)
      SortedRemove (whereToStoreItsKey: ptr to int) returns ptr to T
  endClass

  class Listable
    superclass Object
    fields
      next: ptr to Listable
      key: int
  endClass

endHeader
