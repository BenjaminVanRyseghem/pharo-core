tests
testReturnUnionWithCallback

	| s callback|

	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionWithCallback:.
	callback := NBQSortCallback on: [:a :b | a < b].
	s := self returnUnionWithCallback: callback.
	
	self assert: s callback trunk  = callback trunk.