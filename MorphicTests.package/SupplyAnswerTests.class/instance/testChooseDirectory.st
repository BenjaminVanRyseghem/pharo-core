as yet unclassified
testChooseDirectory

	| tmpDirectory answer |
	tmpDirectory :=FileSystem / 'tmp'.
	
	answer := ([ MorphicUIManager new chooseDirectory ] valueSupplyingAnswer: { 'Choose Directory'. tmpDirectory }).
	
	self assert: answer = tmpDirectory.