inline messages
emitIfNilIfNotNil: aMessageNode
	| args |
	valueTranslator visitNode: aMessageNode receiver.
	args := aMessageNode arguments.
	args last arguments ifNotEmpty: [ args last arguments first binding emitStore: methodBuilder ].
	methodBuilder pushLiteral: nil.
	methodBuilder send: #==.
	methodBuilder jumpAheadTo: #notNilCase if: false.
	self visitInlinedBlockNode: args first.
	methodBuilder jumpAheadTo: #end.
	methodBuilder jumpAheadTarget: #notNilCase.
	self visitInlinedBlockNode: args last.
	methodBuilder jumpAheadTarget: #end.