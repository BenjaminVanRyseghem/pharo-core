private
formatItems: startingIndex

	startingIndex to: items size do: [:i | | item |
		item := 
			NBWeakFinalizerItem new
				list: list index: i freeIndex: nextFreeIndex.
		items at: i put: item.
		nextFreeIndex := i.
	].