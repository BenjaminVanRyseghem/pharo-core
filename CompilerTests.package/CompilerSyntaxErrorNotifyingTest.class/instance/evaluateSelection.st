private
evaluateSelection
	^Compiler new
		evaluate: morph editor selection readStream
		"Note subtle difference versus  (morph editor selectionAsStream). 
		The later does not answer the same contents and would raise a SyntaxErrorNotification with wrong sub-selection"
		in: nil
		to: nil
		notifying: nil
		ifFail: [^failure]
		logged: false