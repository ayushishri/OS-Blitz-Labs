code List

  -- Harry Porter  --  December 4, 2003
                   --  December 11, 2003  -- Modified for Listables

  behavior List

    method AddToFront (p: ptr to T)
      --
      -- This method adds an item to the front of the list.  This is the
      -- end from which the "Remove" method will retrieve elements.
      --
      -- NOTE: This method assumes the object is not already on any lists.
      --
        if self.IsEmpty ()
          first = p
          last = p
        else
          p.next = first
          first = p
        endIf
      endMethod

    method AddToEnd (p: ptr to T)
      --
      -- This method adds an item to the tail of the list.  Using "AddToEnd"
      -- and "Remove" will achieve a FIFO queue.
      --
      -- NOTE: This method assumes the object is not already on any lists.
      --
        if self.IsEmpty ()
          first = p
          last = p
        else
          last.next = p
          last = p
        endIf
      endMethod

    method Remove () returns ptr to T
      --
      -- This method removes the item at the front of the list and
      -- returns a ptr to it.  If the list is empty, it returns null.
      --
        var item: ptr to T = first
        if first == null
          return null
        elseIf first == last
          first = null
          last = null
        else
          first = first.next asPtrTo T
        endIf
        item.next = null
        return item
      endMethod

    method IsEmpty () returns bool
      --
      -- Return true iff the list is empty.
      --
        if first
          return false
        else
          return true
        endIf
      endMethod

    method ApplyToEach (f: ptr to function (ptr to T))
      --
      -- This method is passed a function which can be applied to a
      -- list element.  This method applies this function (invokes the
      -- function) on every element in the list, in order.
      --
        var p: ptr to T
        for (p = first; p; p = p.next asPtrTo T)
          f (p)
        endFor
      endMethod

    method SortedInsert (p: ptr to T, k: int)
      --
      -- This method assumes that the list is ordered by key value.
      -- It inserts the element "p" into the proper place, using
      -- a key of "k".  This method does a linear walk of the list
      -- to determine where to add the element.
      --
      -- NOTE: This method assumes the object is not already on any lists.
      --
        var q: ptr to Listable
        p.key = k
        if self.IsEmpty ()        -- If the list is empty...
          first = p               --    create a singleton list.
          last = p
        elseIf k < first.key      -- If it should go before the first...
          p.next = first          --    add element to front of list.
          first = p
        else
          for (q = first; q.next; q = q.next)
            if k < q.next.key     -- If it should go after element q...
              p.next = q.next     --    add element after q.
              q.next = p
              return
            endIf
          endFor                  -- If we hit the end...
          last.next = p           --    add element to end of list
          last = p
        endIf
      endMethod

    method SortedRemove (whereToStoreItsKey: ptr to int) returns ptr to T
      --
      -- This method removes the item at the front of the list and
      -- returns a ptr to it.  If the list is empty, it returns null.
      -- This method is passed "whereToStoreItsKey", a ptr to an integer
      -- variable (which may be null).  This method will store the key
      -- that this element had in this integer variable, unless the pointer
      -- was null.
      --
        var item: ptr to T = first
        if self.IsEmpty ()
          return null
        endIf
        item = first
        if first == last
          first = null
          last = null
        else
          first = first.next asPtrTo T
        endIf
        if whereToStoreItsKey != null
          * whereToStoreItsKey = item.key
        endIf
        return item
      endMethod

  endBehavior

endCode
