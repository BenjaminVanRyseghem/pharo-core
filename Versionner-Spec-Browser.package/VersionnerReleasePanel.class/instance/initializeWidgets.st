initialization
initializeWidgets
	(releaseNumberLabel := self newLabel)
		text: 'Version number:'.
	(releaseNumber := self newTextInput)
		autoAccept: true.

	(symbolicVersionResolutionCheckBox := self newCheckBox)
		label: 'Resolve symbolic dependencies? (e.g. stable -> 3.0)';
		state: true;
		whenBuiltDo: [ symbolicVersionResolutionCheckBox labelOnLeft.
						releaseNumber accept: self nextVersionString ];
		whenDesactivatedDo: [ self confirmSymbolicVersionResolutionDesactivation ].