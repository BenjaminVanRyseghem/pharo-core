compiling
logMethodSource: aText forMethod: aCompiledMethod inCategory: category withStamp: changeStamp
	aCompiledMethod
		putSource: aText
		class: self
		category: category
		withStamp: changeStamp 
		inFile: 2
		priorMethod: (self
					compiledMethodAt: aCompiledMethod selector
					ifAbsent: [])