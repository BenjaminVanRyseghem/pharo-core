cpu
getProcessorIdentifier
	"Return a description of the processor.
	
		self getProcessorIdentifier
	"
	
	^self getEnvironmentVariable: 'PROCESSOR_IDENTIFIER'