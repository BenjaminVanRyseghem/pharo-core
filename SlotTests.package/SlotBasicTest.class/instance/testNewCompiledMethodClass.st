tests-basic
testNewCompiledMethodClass

	aClass := self makeWithLayout: CompiledMethodLayout.

	self deny: aClass isCompact.
	self deny: aClass isPointers.
	self deny: aClass isFixed.
	self assert: aClass isBytes.
	self deny: aClass isWeak.