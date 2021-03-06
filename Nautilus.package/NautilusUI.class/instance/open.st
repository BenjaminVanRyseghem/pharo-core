displaying
open
	| focus |
	super open.
	window takeKeyboardFocus.
	focus := list.
	self selectedClass 
		ifNotNil: [ 
			acceptor := ClassOrMethodDefinitionAcceptor model: self. 
			focus := list2 ].
	self selectedCategory ifNotNil: [:cat |  
		categoryWidget selectProtocol: cat.
		methodWidget resetMethodCache.
		methodWidget update: #getMethodItem:.
		acceptor := MethodDefinitionAcceptor model: self. 
		focus := categoryWidget ].
	self selectedMethod ifNotNil: [:meth | 
		methodWidget selectMethod: meth.
		acceptor := MethodDefinitionAcceptor model: self. 
		focus := methodWidget ].
	self giveFocusTo: focus.
	