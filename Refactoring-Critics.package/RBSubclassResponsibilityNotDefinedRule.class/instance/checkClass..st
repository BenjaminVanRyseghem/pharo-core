running
checkClass: aContext 
	(aContext selectedClass whichSelectorsReferTo: #subclassResponsibility) do: 
		[ :each | 
		(aContext selectedClass withAllSubclasses 
			detect: 
				[ :class | 
				class subclasses isEmpty and: [ (class whichClassIncludesSelector: each) == aContext selectedClass ] ]
			ifNone: [ nil ]) notNil ifTrue: 
			[ result 
				addClass: aContext selectedClass
				selector: each ] ]