item creation
buildSwitchToSourceCodeButton
	
	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: # switchToSourceCodeButton;
					stateSelector: #showSource ;
					onImage: (Smalltalk ui icons iconNamed: #sourceSelectedIcon);
					offImage: (Smalltalk ui icons iconNamed: #sourceUnselectedIcon);
					pressedImage: (Smalltalk ui icons iconNamed: #sourcePressedIcon);	
					extent: 24@24;
					state: #on;
					helpText: 'Show source code';
					yourself.