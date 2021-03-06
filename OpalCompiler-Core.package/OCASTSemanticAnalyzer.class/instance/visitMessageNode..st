visitor
visitMessageNode: aMessageNode
	| selectorString |
	
	"this should be moved to the parser"
	selectorString := (String streamContents: [ :str | aMessageNode selectorParts do: [ :each | str nextPutAll: each value ]]).
	(Symbol findInterned: selectorString) ifNil: [self unknownSelector: aMessageNode].
	
	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) 
		ifTrue: [self visitNode: aMessageNode receiver].
	aMessageNode arguments do: [:each | self visitNode: each].
	
	