accessing
namesInDeclarationOrder

	| result |
	
	result := SortedCollection sortBlock: [:a :b | a value second < b value second ].

	fields associationsDo: [:each  | result add: each ].
		
	^ result collect: [:each | each key ]