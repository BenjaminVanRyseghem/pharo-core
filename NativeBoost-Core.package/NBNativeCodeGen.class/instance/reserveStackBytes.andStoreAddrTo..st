code generation
reserveStackBytes: numBytesOrBlock andStoreAddrTo: aTemp

	"emit code to reserve a given number of bytes, answer the temp,
	which will hold an allocated block address "
	
	| numBytes |

	numBytes := numBytesOrBlock. 
	numBytesOrBlock isBlock ifTrue: [ numBytes := numBytesOrBlock value: self ].
	
	numBytes = EAX ifFalse: [
		asm mov: numBytes to: EAX ].
	
	"align stack to 4-bytes (will waste 4 bytes if its already aligned)"
	asm
		or: EAX with: 3;
		inc: EAX	;
		sub: ESP with: EAX;
		mov: ESP to: aTemp.  "store the allocated space start into a temp"
	^ aTemp
