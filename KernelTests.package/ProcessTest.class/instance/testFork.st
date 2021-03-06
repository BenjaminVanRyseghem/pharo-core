testing
testFork

	| hasBlockRun block return |
	hasBlockRun := false.
	block := [ hasBlockRun := true ].
	return := block fork.
	
	"Returns immediately"
	self deny: hasBlockRun.
	
	"Returns a process - Blue book specifies that it returns the block itself"
	self assert: (return isKindOf: Process).
	
	"Forked process has been scheduled"
	self assert: Processor nextReadyProcess equals: return.