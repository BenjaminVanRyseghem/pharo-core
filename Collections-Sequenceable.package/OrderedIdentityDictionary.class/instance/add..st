adding
add: anAssociation

	(self includesKey: anAssociation key)
		ifFalse: [ keys add: anAssociation key ].
		
	^ super add: anAssociation 