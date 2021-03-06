menus behavior
runTestsOfGroups: aCollection notifying: aBoolean
	
	| classes label |
	label := 'Group: '.
	aCollection size >1 ifTrue: [ label := 'Groups: '].
	classes := aCollection gather:[:each | each elements ].
	classes := classes select: [:class | class inheritsFrom: TestCase ].
	self runClassTests: classes notifying: false.
	aBoolean
		ifFalse: [ self
					notifyTitle: 'Test Finished'
					contents: label,((aCollection collect: #name) joinUsing: ', ') ]