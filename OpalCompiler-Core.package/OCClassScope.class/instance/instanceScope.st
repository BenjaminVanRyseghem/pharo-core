levels
instanceScope

	^ OCInstanceScope new
		vars: class allInstVarNames;
		outerScope: self;
		yourself