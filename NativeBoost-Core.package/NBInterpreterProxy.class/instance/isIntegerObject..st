proxy testing
isIntegerObject: oop
	 " return true (1) only if oop is smallInteger (not big integer or any other object !!) "
	^ self simpleCall
