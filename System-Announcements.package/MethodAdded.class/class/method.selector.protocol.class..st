instance creation
method: aCompiledMethod selector: aSelector protocol: aProtocolName class: aClass
	self flag: #look.  "Is it ok to send an event with no requestor?"
	^self
		method: aCompiledMethod
		selector: aSelector
		protocol: aProtocolName
		class: aClass
		requestor: nil