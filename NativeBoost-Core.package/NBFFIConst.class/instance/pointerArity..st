accessing
pointerArity: ptrArity

	ptrArity > 0 ifTrue: [ self error: 'passing pointer to constant' ]