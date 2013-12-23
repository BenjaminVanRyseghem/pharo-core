package filter
packagePattern
	^ packagePattern ifNil: [ '.*' asRegexIgnoringCase ]