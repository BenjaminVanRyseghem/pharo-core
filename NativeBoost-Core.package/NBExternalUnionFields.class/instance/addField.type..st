parsing spec
addField: aName type: aType
	fields
		at: aName
		put:
			{aType.
			(nbFields := nbFields + 1)}