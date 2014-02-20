testing
ensureKeyClasses

	^ self hasKeyClasses
		ifFalse: [ self defineKeyClassesTemplate ]