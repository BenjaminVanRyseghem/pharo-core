private
isValidUsername: aString
	^aString isEmptyOrNil not 
		and: [ (self userNames includes: aString) not ].