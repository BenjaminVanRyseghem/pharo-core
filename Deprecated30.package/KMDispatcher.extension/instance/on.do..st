*Deprecated30
on: aShortcut do: anAction
	Transcript show: 'You have an on:do: instead of a onKey: do: in ',thisContext sender method printString; cr.
	self deprecated: 'Use onKey: do: instead' on: '4 August 2013' in: 'Pharo30'.
	^ self bindKeyCombination: aShortcut toAction: anAction