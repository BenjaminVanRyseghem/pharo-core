private
checkClass: aClass 
	context selectedClass: aClass.
	(environment includesClass: aClass) ifTrue: [rule checkClass: context]