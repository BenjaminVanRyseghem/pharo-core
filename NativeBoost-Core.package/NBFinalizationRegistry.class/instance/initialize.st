initialization
initialize
	super initialize.
	sema := Semaphore forMutualExclusion.
	self reset.
	WeakArray addWeakDependent: self