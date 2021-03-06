events-processing
handleMouseMove: anEvent
	"System level event handling."
	anEvent wasHandled ifTrue:[^self]. "not interested"
	"Rules say that by default a morph gets #mouseMove iff
		* the hand is not dragging anything,
			+ and some button is down,
			+ and the receiver is the current mouse focus."
	(anEvent hand hasSubmorphs) ifTrue:[^self].
	(anEvent anyButtonPressed and:[anEvent hand mouseFocus == self]) ifFalse:[^self].
	anEvent wasHandled: true.
	self mouseMove: anEvent.
	(self handlesMouseStillDown: anEvent) ifTrue:[
		"Step at the new location"
		self startStepping: #handleMouseStillDown: 
			at: Time millisecondClockValue
			arguments: {anEvent copy resetHandlerFields}
			stepTime: self mouseStillDownStepRate ].
	^ self eventHandler ifNotNil: [:handler | handler mouseMove: anEvent fromMorph: self ]
