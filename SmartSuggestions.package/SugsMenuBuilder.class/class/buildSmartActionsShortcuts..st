builder
buildSmartActionsShortcuts: aBuilder
	<keymap>

	(aBuilder shortcut: #smartSuggestions)
		category: #SmalltalkEditor
		default: $t command mac| $t ctrl unix | $t ctrl
		do: [ :morph | morph smartSuggestions ]
		description: 'Browse suggestions based on selections'.


