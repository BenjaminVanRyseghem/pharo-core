private
isObsoleteManifest

	| methodDico |
	methodDico := manifestClass class methodDict.
	^ methodDico isEmpty 
		or: [methodDico anySatisfy: [:method | |selector|
				selector := method selector.
				(#(#rejectClass. #rejectRules) includes: selector)
					ifTrue: [ false ]
					ifFalse: [
			(manifestClass perform: selector) anySatisfy: [ :each | 
				each first first = (Character value: 40)]]]  ]