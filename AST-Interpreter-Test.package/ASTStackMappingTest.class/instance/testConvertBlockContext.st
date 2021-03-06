testing
testConvertBlockContext
	| aSTBlockContext |
	aSTBlockContext := self blockContext asASTInterpreterContext.
	self assert: self blockContext home asASTInterpreterContext = aSTBlockContext homeContext.
	
	self assert: self blockContext outerContext asASTInterpreterContext equals: aSTBlockContext outerContext.
	self assert: self blockContext closure asASTBlockClosure equals: aSTBlockContext closure.
	self assert: self blockContext tempNames equals: aSTBlockContext temporaries keys.
	self assert: self blockContext arguments equals: aSTBlockContext arguments.
	