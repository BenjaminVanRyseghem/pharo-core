instance creation
method: aCompiledMethod selector: aSelector protocol: aProtocolName class: aClass requestor: aRequestor
	^self new
			method: aCompiledMethod;
			selector: aSelector;
			protocol: aProtocolName;
			methodClass: aClass;
			yourself