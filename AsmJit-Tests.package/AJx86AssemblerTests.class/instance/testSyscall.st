tests
testSyscall
	"Syscall instruction is only valid in 64-bit mode"

	self asmShould: [ :a | a syscall ] raise: Error