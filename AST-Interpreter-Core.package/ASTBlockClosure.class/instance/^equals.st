testing
= anASTBlockClosure
	(anASTBlockClosure class == self class)ifFalse: [^false].
	(self homeContext = anASTBlockClosure homeContext)ifFalse: [^false].
	^true