bytecode decoding
pushLiteralVariable: anAssociation 
	"Push Contents Of anAssociation On Top Of Stack bytecode."
	| info |
	contextCount > 0 ifTrue:[^self].

	info := NECTypeInfo definedByMessageSend: anAssociation value.
	types add: info