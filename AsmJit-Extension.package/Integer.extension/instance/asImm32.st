*AsmJit-Extension
asImm32

	"Convert integer value into a signed immediate operand"
	^ AJImmediate new ivalue: self; size: 4