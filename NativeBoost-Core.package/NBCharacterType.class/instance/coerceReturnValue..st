emitting code
coerceReturnValue: gen
	| asm proxy val |
	"convert unsigned Char to ST Character"
	asm := gen asm.
	proxy := gen proxy.
	
	val := gen reserveTemp.
	asm movzx: asm EAX with: asm AL.
	asm mov: asm EAX to: val.
	
	proxy fetchPointer: val ofObject: (proxy characterTable).
	
	gen releaseTemps: 1