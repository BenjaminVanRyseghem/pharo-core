hacks
allInstancesDo: aBlock
	"Only count until thisContext"
	| inst next |
	inst := self someInstance.
	[inst == thisContext] whileFalse:[
		next := inst nextInstance.
		aBlock value: inst.
		inst := next]