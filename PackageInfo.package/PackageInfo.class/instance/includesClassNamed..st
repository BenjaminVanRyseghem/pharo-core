testing
includesClassNamed: aClassName
	^ self includesSystemCategory: ((self systemOrganization categoryOfElement: aClassName) ifNil: [^false])