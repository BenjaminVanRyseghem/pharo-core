accessing
errorCode
	errorCode
		ifNotNil: [^ errorCode].
	^ errorCode := [FT2Library errorCode]
				on: Error
				do: [:ex | ex return: 'can''t get error code']