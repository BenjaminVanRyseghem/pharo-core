instance creation
newBytes: numberOfBytes trailerBytes: trailer nArgs: nArgs nTemps: nTemps nStack: stackSize nLits: nLits primitive: primitiveIndex flag: flag
	"Answer an instance of me. The header is specified by the message 
	arguments. The remaining parts are not as yet determined."
	| largeBit primBits flagBit |
	nTemps > 63 ifTrue:
		[^ self error: 'Cannot compile -- too many temporary variables'].	
	nLits > 255 ifTrue:
		[^ self error: 'Cannot compile -- too many literals variables'].	
	largeBit := (nTemps + stackSize) > SmallFrame ifTrue: [1] ifFalse: [0].

	"For now the high bit of the primitive no. is in a high bit of the header"
	primBits := (primitiveIndex bitAnd: 16r1FF) + ((primitiveIndex bitAnd: 16r200) bitShift: 19).

	flagBit := flag ifTrue: [ 1 ] ifFalse: [ 0 ].

	"Copy the source code trailer to the end"
	^trailer
		createMethod: numberOfBytes
		class: self
		header: (nArgs bitShift: 24) +
				(nTemps bitShift: 18) +
				(largeBit bitShift: 17) +
				(nLits bitShift: 9) +
				primBits +
				(flagBit bitShift: 29)