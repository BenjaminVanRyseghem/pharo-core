menus behavior
implementSelector

	| selection |
	
	selection := sourceTextArea selectedContents asString.
	selection ifEmpty: [ ^ sourceTextArea flash ].
	
	self implementSelector: selection findSelector