proxy functions
integerObjectOf:  value
	"Convert C integer value to smallinteger object.
	no range checking performed. "

	"lets not do call, but just do a shortcut (value << 1) + 1 "
	| tmp |
	tmp := value.
	value isBlock ifTrue: [ tmp := value value ].
	tmp = EAX ifFalse: [ asm mov: tmp to: EAX ].
	asm shl: EAX with: 1;
		inc: EAX	.
	
	^ EAX
	
	" ^ self simpleCall "
