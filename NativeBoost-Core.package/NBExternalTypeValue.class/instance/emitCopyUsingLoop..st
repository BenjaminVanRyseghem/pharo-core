accessing
emitCopyUsingLoop: asm
	| ssi sdi |
	"copy the value using loop "
	ssi := asm reserveTemp.
	sdi := asm reserveTemp.
	asm 
		mov: asm ESI to: ssi;
		mov: asm EDI to: sdi;
		cld;
		mov: asm ESP to: asm ESI;
		mov: asm EAX to: asm EDI;
		mov: self class valueSize to: asm ECX;
		rep;movsb;
		mov: ssi to: asm ESI;
		mov: sdi to: asm EDI;
		releaseTemps: 2.
