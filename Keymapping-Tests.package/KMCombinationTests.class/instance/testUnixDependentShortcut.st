as yet unclassified
testUnixDependentShortcut
	| shortcut |
	shortcut := $a ctrl unix.
	
	self assert: (shortcut shortcut = $a ctrl).
	
	self assert: shortcut platform equals: #Unix.