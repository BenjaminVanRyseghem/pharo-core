tests
testMethodContextWithClosure
	"This test should be improved"
	| methodContext1  materializedMethodContext1  |
	methodContext1 := self class blockClosureContextTesting.
	materializedMethodContext1 := self resultOfSerializeAndMaterialize: methodContext1.
	methodContext1 assertWellMaterializedInto: materializedMethodContext1 in: self.
	
