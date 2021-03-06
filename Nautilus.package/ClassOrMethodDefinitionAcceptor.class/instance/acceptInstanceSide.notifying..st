protocol
acceptInstanceSide: source notifying: aController
	| isClassDefinition |
	
	isClassDefinition := false.
	
	"Try to parse the source. If it succeed, it means the source represents a message send aka a class definition. On error, we switch to method definition mode"
	[ RBParser parseMethod: source ]
		on: Error
		do: [ isClassDefinition := true ].

	isClassDefinition
		ifTrue: [
			self model
				compileAClassFrom: source 
				notifying: aController ]
		ifFalse: [
			self model
				compileAMethodFromCategory: Protocol unclassified
				withSource: source
				notifying: aController ]