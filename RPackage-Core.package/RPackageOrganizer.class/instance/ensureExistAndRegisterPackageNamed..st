private registration
ensureExistAndRegisterPackageNamed: aSymbol
	"A new package is now available and declared in the receiver."
	
	| package |
	
	package := packages 
		at: aSymbol asSymbol 
		ifAbsentPut: [ self packageClass named: aSymbol ].
		
	package extendedClasses do: [ :extendedClass|
			self registerExtendingPackage: package forClass: extendedClass].
	package definedClasses do: [ :definedClass|
			self registerPackage: package forClass: definedClass].
	
	self announcer announce: (RPackageCreated to: package).
	
	^ package