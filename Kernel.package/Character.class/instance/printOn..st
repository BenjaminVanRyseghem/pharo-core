printing
printOn: aStream
	| name |
	(value > 32 and: [ value ~= 127])
		ifTrue: [ aStream nextPut: $$; nextPut: self ]
		ifFalse: [
			name := self class constantNameFor: self.
			aStream nextPutAll: self class name.
			name notNil
				ifTrue: [ aStream space; nextPutAll: name ]
				ifFalse: [ aStream nextPutAll: ' value: '; print: value ] ].