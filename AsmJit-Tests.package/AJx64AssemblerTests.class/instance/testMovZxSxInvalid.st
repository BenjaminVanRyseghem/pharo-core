tests
testMovZxSxInvalid
	{AH.
	CH.
	DH.
	BH}
		do: [ :reg | 
			self deny: (self bytes: [ :a | a movzx: reg to: a EAX ]) isEmpty.
			self asmShould: [ :a | a movzx: reg to: a RAX ] raise: Error ]