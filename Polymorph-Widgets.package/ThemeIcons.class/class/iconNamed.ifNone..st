accessing
iconNamed: aSymbol ifNone: aBlock
	^ self current 
		iconNamed: aSymbol 
		ifNone: aBlock