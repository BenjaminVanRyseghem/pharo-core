shortcuts
buildEditorKeymappingsOn: aBuilder

	(aBuilder shortcut: #selectAll) 
		category: #NautilusSourceCodeShortcuts
		default: $a command
		do: [ :target | target sourceTextArea handleEdit: [ target sourceTextArea selectAll ] ].
		
	(aBuilder shortcut: #copySelection) 
		category: #NautilusSourceCodeShortcuts
		default: $c command
		do: [ :target | target sourceTextArea copySelection ].
		
	(aBuilder shortcut: #find) 
		category: #NautilusSourceCodeShortcuts
		default: $f command, $f command
		do: [ :target | target sourceTextArea find ].
		
	(aBuilder shortcut: #findAgain) 
		category: #NautilusSourceCodeShortcuts
		default:  $f command, $g command
		do: [ :target | target sourceTextArea findAgain ].
		
	(aBuilder shortcut: #setSearchString)
		category: #NautilusSourceCodeShortcuts
		default: $h command
		do: [ :target | target sourceTextArea setSearchString ].
		
	(aBuilder shortcut: #cancel) 
		category: #NautilusSourceCodeShortcuts
		default: $l command
		do: [ :target | target sourceTextArea cancelWithoutConfirmation ].
		
	(aBuilder shortcut: #paste) 
		category: #NautilusSourceCodeShortcuts
		default: $v command
		do: [ :target | target sourceTextArea paste ].
		
	(aBuilder shortcut: #cut) 
		category: #NautilusSourceCodeShortcuts
		default: $x command
		do: [ :target | target sourceTextArea cut ].
				
	(aBuilder shortcut: #undo) 
		category: #NautilusSourceCodeShortcuts
		default: $z command
		do: [ :target | target sourceTextArea undo ].
		
	(aBuilder shortcut: #redo) 
		category: #NautilusSourceCodeShortcuts
		default: $z command shift
		do: [ :target | target sourceTextArea redo ].
	
	(aBuilder shortcut: #cursorHome)
		category: #NautilusSourceCodeShortcuts
		default: Character home command
		do: [ :target :morph :event | target sourceTextArea cursorHome: event ].
	
	(aBuilder shortcut: #cursorEnd)
		category: #NautilusSourceCodeShortcuts
		default: Character end command
		do: [ :target :morph :event | target sourceTextArea cursorEnd: event ].

	(aBuilder shortcut: #browseIt) 
		category: #NautilusSourceCodeShortcuts
		default: $b command
		do: [ :target | target sourceTextArea browseIt ].
				
	(aBuilder shortcut: #doIt) 
		category: #NautilusSourceCodeShortcuts
		default: $d command
		do: [ :target | target sourceTextArea doIt ].

	(aBuilder shortcut: #inspectIt) 
		category: #NautilusSourceCodeShortcuts
		default: $i command
		do: [ :target | target sourceTextArea inspectIt ].
		
	(aBuilder shortcut: #implementorsOfIt) 
		category: #NautilusSourceCodeShortcuts
		default: $m command
		do: [ :target | target sourceTextArea implementorsOfIt ].
		
	(aBuilder shortcut: #sendersOfIt)
		category: #NautilusSourceCodeShortcuts
		default: $n command
		do: [ :target | target sourceTextArea sendersOfIt ].

	(aBuilder shortcut: #printIt) 
		category: #NautilusSourceCodeShortcuts
		default: $p command
		do: [ :target | target sourceTextArea printIt ].