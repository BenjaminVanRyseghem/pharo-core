shortcuts
buildRecategorizeShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #recategorizeMethod)
		category: #NautilusGlobalShortcuts
		default: $m command , $m command 
		do: [ :target | target categorizeMethod ]
		description: 'Categorize the selected method'.
		
	(aBuilder shortcut: #recategorizeClass)
		category: #NautilusGlobalShortcuts
		default: $m command , $c command 
		do: [ :target | target moveInNewPackage ]
		description: 'Categorize the selected class'.