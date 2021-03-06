icon
packageIconFor: aPackage
	| mcpackage |
	
	PackagesIconsCache
		at: aPackage
		ifPresent: [:icon |
			 icon class == IconicButtonStateHolder ifFalse: [ ^ icon ].
			^ icon asIconTargetting: self ].

	aPackage classes isEmpty ifTrue: [^ PackagesIconsCache at: aPackage put: (Smalltalk ui icons iconNamed: #emptyPackageIcon) ].
	
	mcpackage := aPackage correspondingMcPackage.
	(mcpackage notNil and: [ mcpackage isDirty ])
		ifTrue: [ | icon |
			icon := IconicButton new 
						target: self;
						actionSelector: #saveDirtyPackages:;
						arguments: {{ aPackage }};
						labelGraphic: (aPackage definedClasses
											ifEmpty: [ (Smalltalk ui icons iconNamed: #dirtyMonticelloPackageIcon) ]
											ifNotEmpty: [ (Smalltalk ui icons iconNamed: #dirtyPackageIcon) ]);
						color: Color transparent;
						extent: 15 @ 16;
						helpText: 'Save the package';
						borderWidth: 0.
			 PackagesIconsCache at: aPackage put: (IconicButtonStateHolder forNautilus: icon).
			^ icon ].

	(mcpackage notNil and: [(mcpackage name = aPackage name ) and: [ aPackage definedClasses isEmpty]])
		ifTrue: [ ^ PackagesIconsCache at: aPackage put: (Smalltalk ui icons iconNamed: #monticelloPackageIcon) ].

	^ PackagesIconsCache at: aPackage put: (Smalltalk ui icons iconNamed: #packageIcon)