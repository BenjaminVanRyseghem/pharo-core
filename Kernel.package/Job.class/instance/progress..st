progress
progress: aNormalizedFloat
	"Set the progress: 0.0 - 1.0"
	self basicProgress: aNormalizedFloat.
	self announceChange.