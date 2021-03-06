proxy functions
stackValue: index
		
	(index isInteger and: [self canUseStackPointer]) ifTrue: [
		
		asm decorateWith: 'InterpreterProxy>>stackValue:' , index asString during:  [ 
		asm mov: self stackPointer to: EAX.
		
		objectFormat stackGrowsDown 
			ifTrue: [
				asm mov: EAX ptr + (self pointerSize*index) to: EAX]
			ifFalse: [
				asm mov: EAX ptr - (self pointerSize*index) to: EAX].
		^ EAX
	]].

	^ self simpleCall