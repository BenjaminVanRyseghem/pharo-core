instructions generated
fcmovnb: aX87Register
	"FP Conditional Move - not below (CF=0)
	"
	^ self 
		addInstruction: #fcmovnb
		operands: { aX87Register }