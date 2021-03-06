source code area
buildNewSourceTextArea

	sourceTextArea := self textMorphClass
				on: self
				text: #sourceCodeFrom:
				accept: #compileSource:notifying:
				readSelection: #contentsSelectionFrom:
				menu: #sourceCodeMenu:shifted:.
				
	sourceTextArea
		askBeforeDiscardingEdits: true;
		"color: Color white;"
		lockSelector: #lockTextArea:from:;
		canLockChangeSelector: #canChangeLockFor:;
		vResizing: #spaceFill;
		hResizing: #spaceFill; 
		font: StandardFonts codeFont;
		spaceFillWeight: 3;
		on: #keyStroke send: #keyStroke:fromSourceCodeMorph: to: self;
		warningLimit: self warningLimit.
		
	self setSourceCodeShorcutsTo: sourceTextArea.
		
	sourceTextAreaLimit := sourceTextArea warningLimit.
	
	sourceTextArea warningLimit: -1.

	sourceTextAreas addFirst: (sourceTextArea -> nil).
	
	^ sourceTextArea 