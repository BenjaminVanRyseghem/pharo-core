accessing
tempNamed: aName put: aValue
	self flag: 'the error signal doesnt work inside the interpreter '.
	(self temporaries includesKey: aName)
		ifTrue: [ ^ self temporaries at: aName put: aValue ].
	
	self homeContext 
		ifNil: [ (VariableNotDefined signalForVariable: aName context: self) == true ifTrue: [ ^ self tempNamed: aName put: aValue]].
	
	^ self homeContext tempNamed: aName put: aValue
		