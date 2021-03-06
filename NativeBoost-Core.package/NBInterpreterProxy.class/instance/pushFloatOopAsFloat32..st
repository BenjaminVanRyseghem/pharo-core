helpers
pushFloatOopAsFloat32: oop

	" input - oop , and operand, pointing to a Oop
	output: 32-bit floating-point value pushed on stack
	clobbers: EAX, ECX"

	Smalltalk compactClassesArray indexOf: Float ifAbsent: [
		"if Float is not compact class, do the hard way "
		self floatValueOf: oop.
		asm sub: (asm ESP) with: 4.
		asm fstp: asm ESP ptr32.
		^ self.
		].
	"since Float is a compact, to check that object is instance of float, 
	we just need to make sure that its header matching the Float's header format" 

	"Floating point value is stored in PowerPC word order"	
	self verifyCompactClassOf: oop is: Float.
	
	objectFormat floatsMatchingPlatform ifFalse: [
		asm 
			sub: ESP with: 8;
			mov: EAX ptr + self baseHeaderSize to: ECX;
			mov: ECX to: ESP ptr+4;
			mov: EAX ptr + (4+self baseHeaderSize) to: ECX;
			mov: ECX to: ESP ptr;
			fld: ESP ptr64;
			add: ESP with: 4 ] 
		ifTrue: [
			asm 
				fld: EAX ptr64 + self baseHeaderSize;
				sub: ESP with: 4 ].
	asm fstp: asm ESP ptr32
