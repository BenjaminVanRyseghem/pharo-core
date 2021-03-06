shortcuts
buildBrowseShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #browseSenders)
		category: #NautilusGlobalShortcuts
		default: $b command , $n command 
		do: [:target | target browseSendersOfMessages ]
		description: 'Browse senders of the selected method'.
		
	(aBuilder shortcut: #browseClassRefs)
		category: #NautilusGlobalShortcuts
		default: $b command, $n command shift
		do: [ :target | target browseClassRefs ]
		description: 'Browse class references'.

	(aBuilder shortcut: #browseImplementors)
		category: #NautilusGlobalShortcuts
		default: $b command , $m command 
		do: [:target | target browseMessages ]
		description: 'Browse implementors of the selected method'.
		
	(aBuilder shortcut: #browseRestricted)
		category: #NautilusGlobalShortcuts
		default: $b command , $s command
		do: [:target | target restrictedBrowse ]
		description: 'Open a restricted browser'.
	
	(aBuilder shortcut: #browseRestrictedClass)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command , $c command
		do: [:target | target restrictedBrowseClass ]
		description: 'Open a restricted browser on the selected class'.
	
	(aBuilder shortcut: #browseSuperclass)
		category: #NautilusGlobalShortcuts
		default: $b command , $s command shift
		do: [:target | target browseSuperclass ]
		description: 'Open a browser on the superclass of the selected class'.
		
	(aBuilder shortcut: #browseRestrictedPackage)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command , $p command
		do: [:target | target restrictedBrowsePackage ]
		description: 'Open a restricted browser on the selected package'.
		
	(aBuilder shortcut: #browseRestrictedRegex)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command , $r command
		do: [:target | target restrictedBrowsePackageRegex ]
		description: 'Open a restricted browser on a package regex'.
		
	(aBuilder shortcut: #browseRestrictedSuperclasses)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command , $S shift command
		do: [:target | target restrictedBrowseSuperclasses ]
		description: 'Open a restricted browser the superclasses'.
		
	(aBuilder shortcut: #browseRestrictedSubclasses)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command , $s command
		do: [:target | target restrictedBrowseSubclasses ]
		description: 'Open a restricted browser the subclasses'.
	
	(aBuilder shortcut: #browseInheritance)
		category: #NautilusGlobalShortcuts
		default: $b command , $i command 
		do: [:target | target methodHierarchy ]
		description: 'Open a restricted browser'.
		
	(aBuilder shortcut: #browseFull)
		category: #NautilusGlobalShortcuts
		default: $b command , $f command 
		do: [:target | target fullBrowse ]
		description: 'Open the same browser'.		
	
	(aBuilder shortcut: #browseVersion)
		category: #NautilusGlobalShortcuts
		default: $b command , $v command 
		do: [:target | target browseVersions ]
		description: 'Browse senders of the selected method'.
