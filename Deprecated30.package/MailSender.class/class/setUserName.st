deprecated
setUserName
	"Change the user's email name for use in composing messages."

	(UserName isNil) ifTrue: [UserName := ''].
	UserName := UIManager default
		request: 'What is your email address?\(This is the address other people will reply to you)' withCRs
		initialAnswer: UserName.
	UserName ifNotNil: [UserName := UserName]