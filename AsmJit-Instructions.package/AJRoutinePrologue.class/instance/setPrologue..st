visitor
setPrologue: anInstructions
	"do nothing"
	| old |
	old := next.
	next := anInstructions.
	anInstructions last next: old 