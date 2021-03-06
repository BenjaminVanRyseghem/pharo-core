Ring extensions
asRingDefinition
	"Creates a RGPackage containing all its classes and methods.
	Including extension methods"
	| rgPackage rgClasses rgMethods rgCls |
	
	self flag: 'Should be removed when RPackage is integrated'.
	rgPackage := RGFactory current createPackageNamed: self packageName.
	rgClasses := self classes collect:[ :cls| cls asRingDefinition ].
	rgMethods := self methods collect: [ :mth| mth asRingDefinition ].

	rgClasses do:[ :cls| rgPackage addClass: cls ].
	
	rgClasses do:[ :cls| | scls |
		scls:= rgPackage classOrTraitNamed: cls superclassName.
		scls notNil
			ifTrue:[ cls superclass: scls.
				     cls theMetaClass superclass: scls theMetaClass ] ].
		
	rgMethods do:[ :mth | 
		rgCls:= rgPackage classOrTraitNamed: mth parentName.
		rgCls notNil
			ifTrue: [ mth isExtension: false.
					rgCls addMethod: mth ]
			ifFalse:[ mth isExtension: true ].
		rgPackage addMethod: mth ].
	
	^rgPackage