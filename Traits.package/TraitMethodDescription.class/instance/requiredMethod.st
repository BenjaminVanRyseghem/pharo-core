accessing
requiredMethod
	| argumentNames numberOfArguments binary |
	self isRequired ifFalse: [^nil].
	self size = 1 ifTrue: [^self locatedMethods anyOne].

	argumentNames := self getArgumentNames.
	binary := self isBinarySelector.
	numberOfArguments := binary
		ifTrue: [1]
		ifFalse: [argumentNames size + 2].
	 ^self
		generateMethod: self selector
		withMarker: CompiledMethod implicitRequirementMarker
		forArgs: argumentNames size
		binary: binary.