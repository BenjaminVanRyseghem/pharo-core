user interface
initialExtent
	| ext |
	(ext := self valueOfProperty: #initialExtent)
		ifNotNil:
			[^ ext].
	^700@500