testing - message sent
testDNU
	| interpretationError dnu |
	
	[ self interpret: '1 aMessageNotUnderstoodBySmallInteger' ]
		on: InterpretationError
		do: [ :err| interpretationError := err ].
	
	dnu := interpretationError cause. 
	
	self assert: dnu message selector equals: #aMessageNotUnderstoodBySmallInteger.
	self assert: dnu receiver equals: 1.
	
	[ self interpret: '1 aMessageNotUnderstoodBySmallInteger: #someArgument' ]
		on: InterpretationError
		do: [ :err| interpretationError := err ].
	
	dnu := interpretationError cause. 
	self assert: dnu message selector equals: #aMessageNotUnderstoodBySmallInteger:.
	self assert: dnu message arguments equals: {#someArgument}.
	self assert: dnu receiver equals: 1.