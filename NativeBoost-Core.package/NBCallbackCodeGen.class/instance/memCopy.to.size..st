misc
memCopy: src to: dst size: sz

	asm 
		mov: src to: asm ESI;
		mov: dst to: asm EDI;
		mov: sz to: asm ECX;
		rep;
		movsb