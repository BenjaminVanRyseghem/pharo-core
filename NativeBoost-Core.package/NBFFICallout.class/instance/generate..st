code generation
generate: aFunctionBodyBlock
	"Answer the byte array, containing the generated machine code"
	| generatedCode |
	
	generatedCode := AJGeneratedCode fromInstructions: (self generateInstructions: aFunctionBodyBlock).
		
	^ generatedCode bytes
	
