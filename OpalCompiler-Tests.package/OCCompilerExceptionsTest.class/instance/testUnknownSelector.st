tests
testUnknownSelector
	self
		compiling: 'griffle self reallyHopeThisIsntImplementedAnywere2' shouldRaise: OCUnknownSelectorWarning ;
		compiling: 'griffle [ self reallyHopeThisIsntImplementedAywhere2 ] value' shouldRaise: OCUnknownSelectorWarning