type aliases
aliasForType: aTypeName

	| alias |
	alias := aTypeName.
	(requestor notNil and: [ requestor respondsTo: #externalTypeAlias: ]) 
		ifTrue: [ alias := requestor externalTypeAlias: aTypeName.
			alias ifNil: [ alias := aTypeName ] ].
	
	" internal aliases "
	TypeAliases ifNil: [ self class initTypeAliases ].
	^ TypeAliases at: alias ifAbsent: [ alias ]