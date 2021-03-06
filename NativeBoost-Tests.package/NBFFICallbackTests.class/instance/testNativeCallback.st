tests - native callbacks
testNativeCallback

	| orig bytes callback |
	
	orig := #[ 2 5 3 10 39 4 80 ] copy.
	bytes := orig copy.
	
	callback := self createNativeCallback.
	
	[ 
		callback install.
		self primNativeQSort: bytes compare: callback address.
	] ensure:  [ callback uninstall ].

	self assert: (orig sort = bytes)


