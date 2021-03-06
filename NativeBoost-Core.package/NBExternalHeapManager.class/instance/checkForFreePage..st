callbacks
checkForFreePage: aMemoryBlock

	"Check if free block covers entire page.
	and if it is, then free the page"
	
	pages at: aMemoryBlock address ifPresent: [:page |
		page length = aMemoryBlock length ifTrue: [ self freePage: page. ^ true]
		].
	
	^ false