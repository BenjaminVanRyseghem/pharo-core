snapshot and quit
processShutDownList: quitting
	"Send #shutDown to each class that needs to wrap up before a snapshot.
	Also void the endianness chace; this can't safely be done on start-up because
	Smalltalk is too late in the start-up sequence."

	EndianCache := nil.
	^ self send: #shutDown: toClassesNamedIn: ShutDownList with: quitting.
