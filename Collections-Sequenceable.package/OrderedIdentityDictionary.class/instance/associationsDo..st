enumerating
associationsDo: aBlock 

	keys do: [:k | aBlock value: (self associationAt: k )]