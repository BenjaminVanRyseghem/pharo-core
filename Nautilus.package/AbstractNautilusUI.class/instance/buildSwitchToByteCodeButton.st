item creation
buildSwitchToByteCodeButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: # switchToByteCodeButton;
					stateSelector: #showByteCode ;
					onImage: (Smalltalk ui icons iconNamed: #byteCodeSelectedIcon);
					offImage: (Smalltalk ui icons iconNamed: #byteCodeUnselectedIcon);
					pressedImage: (Smalltalk ui icons iconNamed: #byteCodePressedIcon);	
					extent: 24@24;
					helpText: 'Show byteCode';
					yourself.