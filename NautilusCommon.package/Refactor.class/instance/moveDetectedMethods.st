as yet unclassified
moveDetectedMethods

	toMoveInSuperClass do: [:assoc || key value selector |
		key := assoc key.
		value := assoc value.
		selector := key selector.
		AbstractNautilusUI compile: key sourceCode classified: key category.
		key methodClass removeSelector: selector.
		value methodClass removeSelector: selector ]