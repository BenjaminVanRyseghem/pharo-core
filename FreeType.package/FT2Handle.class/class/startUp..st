system startup
startUp: booting
	booting ifFalse: [ ^ self ].
	
	self clearRegistry. 
	"update session"
	Session := Smalltalk session
