class initialization
initialize
	"CPUWatcher initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.