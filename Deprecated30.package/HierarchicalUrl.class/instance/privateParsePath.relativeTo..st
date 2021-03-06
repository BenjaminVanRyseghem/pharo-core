parsing
privateParsePath: remainder relativeTo: basePath 
	| nextTok s parsedPath |
	s := remainder readStream.
	parsedPath := OrderedCollection new.
	parsedPath addAll: basePath.
	parsedPath isEmpty ifFalse: [ parsedPath removeLast ].
	
	[ s peek = $/ ifTrue: [ s next ].
	nextTok := String new writeStream.
	[ s atEnd or: [ s peek = $/ ] ] whileFalse: [ nextTok nextPut: s next ].
	nextTok := nextTok contents urlDecoded.
	nextTok = '..' 
		ifTrue: [ parsedPath size > 0 ifTrue: [ parsedPath removeLast ] ]
		ifFalse: [ nextTok ~= '.' ifTrue: [ parsedPath add: nextTok ] ].
	s atEnd ] whileFalse.
	parsedPath isEmpty ifTrue: [ parsedPath add: '' ].
	^ parsedPath