accessing
selectedNodeText
	selectedNode ifNil: [ ^ '' ].
	(selectedNode respondsTo: #selector)ifTrue: [ ^self selectedMessageName  ].
	^selectedNode name copyFrom: 1 to: (35 min: selectedNode name size).
	