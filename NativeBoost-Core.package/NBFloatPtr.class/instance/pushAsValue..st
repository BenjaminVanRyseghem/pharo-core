emitting code
pushAsValue: gen

	"argument in ST(0) "

	| proxy oop asm |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := loader emitLoad: gen.
	proxy verifyCompactClassOf: oop is: Float.
	asm 
		add: asm EAX with: proxy baseHeaderSize;
		push: asm EAX.
	