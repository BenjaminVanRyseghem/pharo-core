as yet unclassified
testReturnUnionUnionChar
	| s |
	NBNativeCodeGen removeNativeCodeFrom: self class >> #returnUnionUnionChar:.
	s := self returnUnionUnionChar: $,.
	self assert: s x = $,