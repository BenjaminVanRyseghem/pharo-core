accessing
valueIvarIndex
	" return a zero-based index "
	^ ( objectClass instVarIndexFor: #value ifAbsent: [ self error: ' should not happen ' ] ) - 1
