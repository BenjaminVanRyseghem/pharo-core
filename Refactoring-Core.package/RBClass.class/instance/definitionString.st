accessing
definitionString
	| definitionStream |
	definitionStream := WriteStream on: ''.
	definitionStream
		nextPutAll: self superclass printString;
		nextPutAll: ' subclass: #';
		nextPutAll: self name;
		nextPutAll: '
	instanceVariableNames: '''.
	self instanceVariableNames do: 
			[:each | 
			definitionStream
				nextPutAll: each;
				nextPut: $ ].
	definitionStream nextPutAll: '''
	classVariableNames: '''.
	self classVariableNames do: 
			[:each | 
			definitionStream
				nextPutAll: each;
				nextPut: $ ].
	definitionStream nextPutAll: '''
	poolDictionaries: '''.
	self sharedPoolNames do: 
			[:each | 
			definitionStream
				nextPutAll: each;
				nextPut: $ ].
	definitionStream nextPutAll: '''
	category: #'''.
	definitionStream nextPutAll: self category asString.
	definitionStream nextPut: $'.
	^definitionStream contents