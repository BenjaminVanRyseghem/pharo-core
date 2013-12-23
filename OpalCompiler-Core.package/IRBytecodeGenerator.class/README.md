I generate bytecodes in response to 'instructions' messages being sent to me.  I rewrite jumps at the end so their jump offsets are correct (see #bytecodes).  For example, to create a compiled method that compares first instVar to first arg and returns 'yes' or 'no' (same example as in IRBuilder), do:

	BytecodeGenerator new
		numArgs: 1;
		pushInstVar: 1;
		pushTemp: 1;
		send: #>;
		if: false goto: #else;
		pushLiteral: 'yes';
		returnTop;
		label: #else;
		pushLiteral: 'no';
		returnTop;
		compiledMethod

You can send #ir to the compiledMethod to decompile to its IRMethod, and you can send #methodNode to either to decompile to its parse tree.
