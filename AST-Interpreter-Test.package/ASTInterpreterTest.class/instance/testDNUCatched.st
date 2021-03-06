testing - message sent
testDNUCatched
	|message|
	message := self interpret: 'DoesNotUnderstandCatcher new someUnknownMessage'.
	self assert: message selector equals: #someUnknownMessage.
	self assert: message arguments equals: #().
	
	message := self interpret: 'DoesNotUnderstandCatcher new someUnknownMessage: #someUnknownArg'.
	self assert: message selector equals: #someUnknownMessage:.
	self assert: message arguments equals: {#someUnknownArg}.