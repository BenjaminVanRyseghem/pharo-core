display
buildRenameButton

	^ (PluggableButtonMorph
			on: self 
			getState: #renameState 
			action: #renameAction 
			label: #renameLabel)
			hResizing: #spaceFill;
			yourself