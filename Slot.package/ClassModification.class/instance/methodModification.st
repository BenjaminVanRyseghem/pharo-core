accessing
methodModification
	^ methodModification ifNil: [
		methodModification := MethodModification new: target layout fieldSize.
		self buildModificationMapFor: methodModification ]