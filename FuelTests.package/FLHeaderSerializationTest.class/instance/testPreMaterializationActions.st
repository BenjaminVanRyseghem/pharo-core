tests
testPreMaterializationActions

	| aClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable ClassVariable2'.
	aClass class
		duringTestCompileSilently: 'postLoadMethod  ClassVariable := 1';
		duringTestCompileSilently: 'postLoadMethod2  ClassVariable := 2';
		duringTestCompileSilently: 'classVariable  ^ClassVariable '.
	
	aClass perform: #postLoadMethod.
	self assert: (aClass perform: #classVariable) = 1.
	
	self serializer addPreMaterializationAction: [  (Smalltalk at: #ClassForTestToBeDeleted1) perform: #postLoadMethod2  ].
	self serialize: aClass.
	self assert: (aClass perform: #classVariable) = 1.
	self materialized.	
	self assert: (aClass perform: #classVariable) = 2.
