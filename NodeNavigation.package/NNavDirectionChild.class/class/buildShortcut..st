builder
buildShortcut: aBuilder
	<keymap>
	(aBuilder shortcut: #selectChild)
		category: #SmalltalkEditor
		default: $o command mac | $o ctrl unix | $o ctrl
		do: [ :morph | morph standOutIntoScope ]
		description: 'Select the node choosing the child'