tests
testIndirectableObjects
	|ok |
	ok := {
	Object new.
	{1. 2}.
	{1->2. 2->3} asDictionary.
	2@3.
	}.
	ok do:[:each | self assert: (self primIsPointers: each)].