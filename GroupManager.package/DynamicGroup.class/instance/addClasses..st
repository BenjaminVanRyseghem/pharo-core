protocol
addClasses: aCollection

	aCollection do: [:e |
		self addBlock: [ e theNonMetaClass methods ].
		self addBlock: [ e theMetaClass methods ]]