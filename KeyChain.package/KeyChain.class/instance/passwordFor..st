private
passwordFor: aUserName

	^ self isUnlocked
		ifTrue: [ self decryptPassword: (groups at: aUserName) ]