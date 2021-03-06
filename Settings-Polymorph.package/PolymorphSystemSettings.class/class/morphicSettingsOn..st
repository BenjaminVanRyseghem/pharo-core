morphic
morphicSettingsOn: aBuilder 
	(aBuilder group: #morphic)
		label: 'Morphic' translated;
		description: 'All morphic settings' translated;
		noOrdering;
		with: [
			self morphicWindowsSettingsOn: aBuilder.
			self morphicMenuSettingsOn: aBuilder.
			self morphicHaloSettingsOn: aBuilder.
			self morphicAnimationSettingsOn: aBuilder.
			(aBuilder setting: #keyboardFocusOnMouseDown)
				label: 'Keyboard focus on mouse down' translated;
				target: MorphicModel;
				description: 'When enabled the mouse button must be clicked within a morph for it to take the keyboard focus.' translated.
			(aBuilder setting: #mouseOverForKeyboardFocus)
				label: 'Lose keyboard focus when mouse leave' translated;
				target: MorphicModel;
				description: 'When true, the mouse must be over a text or list pane in morphic for keystrokes to be felt, and when the mouse is out over the desktop, the so-called desktop-command-keys, such as cmd-b and cmd-R, are honored.  When false, list panes and text panes in morphic remain sensitive to keystrokes even after the mouse is no longer over the pane.' translated.
			(aBuilder setting: #showTextEditingState)
				label: 'Show text editing state' translated;
				target: PluggableTextMorph;
				description: 'When enabled the editing state of PluggableTextMorphs is shown as a colored inset border.' translated.
			(aBuilder setting: #balloonHelpEnabled)
				label: 'Balloon help'; 
				target: UITheme;
				targetSelector: #currentSettings.
			(aBuilder setting: #editableStringMorph)
				label: 'String morphs are editable' translated;
				target: StringMorph;
				description: 'If true, editing on StringMorph is possible if the shift key is pressed while selecting the morphs.' translated.
			(aBuilder setting: #defaultYellowButtonMenuEnabled)
				label: 'Show default action click menu' translated;
				target: Morph;
				description: 'If true, populate an action click menu (default context menu).' translated.
			(aBuilder setting: #easySelectingWorld)
				label: 'Easy selection' translated;
				target: WorldState;
				description: 'If true, select multiple Morphs in the world by dragging a selection box around them.' translated.
			(aBuilder setting: #usePolymorphDiffMorph)
				label: 'Use Polymorph DiffMorph' translated;
				target: self;
				default: true ;
				description: 'If true,  whenever requested the Polymorph DiffMorph will be used for comparison of two methods' translated ].	 