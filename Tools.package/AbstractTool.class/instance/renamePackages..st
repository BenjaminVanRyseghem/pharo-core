package
renamePackages: aCollection

	| name |
	aCollection
		 ifNotEmpty: [ :packages |
			packages do: [ :selectedPackage | self renamePackage: selectedPackage ] ].