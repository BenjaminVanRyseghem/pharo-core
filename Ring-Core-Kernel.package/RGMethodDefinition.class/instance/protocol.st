accessing
protocol

	self isActive 
		ifTrue: [ ^ self compiledMethod ifNil:[ protocol ] ifNotNil: [ self compiledMethod category ]].
	self isHistorical
		ifTrue: [ ^ self protocolAtPointer ifNil:[ self compiledMethod ifNil:[ protocol ] ifNotNil:[ :cm| cm category ] ] ].
	^ protocol			