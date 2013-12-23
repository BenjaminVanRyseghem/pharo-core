*Tests-util
testGatherExtensionsFromSamePackage
	| extensionMethod |
	extensionMethod := (PackageInfoTest>>#packageClass).
	self assert: (extensionMethod category beginsWith: '*').
	
	self assert: (((PackageInfo named: 'Tests')
					extensionMethods collect: #method)
						includes: extensionMethod)