inline messages
emitIf: aMessageNode boolean: aBoolean

	valueTranslator visitNode: aMessageNode receiver.
	methodBuilder jumpAheadTo: #else if: aBoolean.
	self visitInlinedBlockNode: aMessageNode arguments first.
	methodBuilder jumpAheadTo: #end.
	methodBuilder jumpAheadTarget: #else.
	self visitInlinedBlockNode: aMessageNode arguments last.
	methodBuilder jumpAheadTarget: #end.