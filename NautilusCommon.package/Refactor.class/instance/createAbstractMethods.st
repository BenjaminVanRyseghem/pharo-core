as yet unclassified
createAbstractMethods

	addAnAbstractMethodNamed do: [:assoc || sel cat |
		sel := assoc key.
		cat := assoc value.
		AbstractNautilusUI compile: sel, '
	^ self subclassResponsibility' classified: cat]