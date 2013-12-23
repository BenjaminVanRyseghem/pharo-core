list protocol
allowToSelect

	^ self allowToSelectSelector
		ifNil: [ true ]
		ifNotNil: [ :s | self model perform: s ]