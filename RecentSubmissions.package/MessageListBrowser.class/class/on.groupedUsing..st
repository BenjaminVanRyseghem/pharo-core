deprecated
on: aMessageList groupedUsing: aSelector
	
	aMessageList perform: aSelector.
	^self new
		model: aMessageList.

	