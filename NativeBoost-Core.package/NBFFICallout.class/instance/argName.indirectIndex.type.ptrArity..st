spec parsing
argName: argName indirectIndex: anIndex type: typeName ptrArity: ptrArity
	| type |
	argName
		ifNil: [ 
			"allow nil,true,false as untyped arguments"
			typeName = 'nil'
				ifTrue: [ ^ NBFFIConst value: 0 ].
			typeName = 'false'
				ifTrue: [ ^ NBFFIConst value: 0 ].
			typeName = 'true'
				ifTrue: [ ^ NBFFIConst value: 1 ].
			ptrArity > 0
				ifTrue: [ self error: 'missing argument name' ].	"lone self"
			typeName = 'self'
				ifTrue: [ ^ (requestor asNBExternalType: self) loader: self receiverArgumentLoader ].
			^ self resolveType: typeName ].
	type := self typeName: typeName ptrArity: ptrArity.
	type loader: (self loaderForArgNamed: argName indirectIndex: anIndex).
	^ type