traits-factory
cleanUpTraits

	Smalltalk globals allTraits 
		select: [ :aTrait | aTrait name beginsWith: self traitNamePrefix ]
		thenDo: [ :aTrait | self removeFromSystem: aTrait ]