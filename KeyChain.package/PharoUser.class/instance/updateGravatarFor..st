gravatar
updateGravatarFor: email
	| newAvatar |
	
	newAvatar := [ self retrieveGravatarFromMail: email ]
					on: Error
					do: [ nil ].
					
	newAvatar ifNotNil: [ avatar := newAvatar ].