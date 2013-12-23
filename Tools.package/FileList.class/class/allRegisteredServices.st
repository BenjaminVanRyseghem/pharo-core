file reader registration
allRegisteredServices
	"self allRegisteredServices"

	^self registeredFileReaderClasses flatCollect: [:each | each services]
	