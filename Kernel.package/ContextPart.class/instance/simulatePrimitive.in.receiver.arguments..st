private
simulatePrimitive: primitiveIndex in: method receiver: receiver arguments: arguments
	| key simulator |
	
	key := primitiveIndex = 117 
		ifTrue: [ | literal |
			literal := method literalAt: 1.
			"primitive name, module name"
			{literal second. literal first}] 
		ifFalse: [ primitiveIndex ].
	
	simulator := self class specialPrimitiveSimulators at: key ifAbsent: [
		 "named primitives"
		^  primitiveIndex = 117
				ifTrue:[
					self withoutPrimitiveTryNamedPrimitiveIn: method for: receiver withArgs: arguments.
					"this uses primitive 218, which doesn't works as expected... 
					self tryNamedPrimitiveIn: method for: receiver withArgs: arguments " ]
				ifFalse:[
					receiver tryPrimitive: primitiveIndex withArgs: arguments ]]. 
	
	^ simulator 
		simulatePrimitiveFor: method
		receiver: receiver
		arguments: arguments
		context: self