testing
testAddingMethods
	| newMethod newClass |
	
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newMethod:= (RGFactory current createMethodNamed: #add: parent: newClass)
					protocol: 'adding';
					sourceCode: 'add: newObject
									^self addLast: newObject'.
	
	self assert: (newMethod isMetaSide not).
	self assert: (newClass hasMethods not).

	newClass addMethod: newMethod.
	newClass addSelector: #size 
			   classified: 'accessing' 
			   sourced: 'fakeMethod
							^lastIndex - firstIndex + 1'.
	
	self assert: (newClass hasMethods).
	self assert: (newClass selectors = #(add: size)).
	self assert: (newClass includesSelector: #add:).
	self assert: ((newClass methodNamed: #add:) = newMethod).
	self assert: (newClass methods size = 2).
	self assert: (newClass selectors size = 2).
	self assert: (newClass allSelectors size = 2).  "no hierarchy"

	newMethod:= newClass methodNamed: #size.
	self assert: (newMethod parent = newClass).
	
	self assert: ((newClass compiledMethodNamed: #size) notNil).
	self assert: ((newClass compiledMethodNamed: #fakeMethod) isNil)