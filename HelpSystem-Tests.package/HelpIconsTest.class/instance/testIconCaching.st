testing
testIconCaching
	 
	| first second |
	#(bookIcon pageIcon refreshIcon) do: [:iconSymbol |
		first := self defaultTestClass iconNamed: iconSymbol.
		second := self defaultTestClass iconNamed: iconSymbol.	
		self assert: first notNil.
		self assert: first == second.
	]
	