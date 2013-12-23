setUp
setUp

	currentCompiler := SmalltalkImage compilerClass.
	SmalltalkImage compilerClass: Compiler.
	self removeGeneratedMethods.