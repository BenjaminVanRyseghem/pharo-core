snapshot and quit
logStartUpErrorDuring: aBlock into: aCollection tryDebugger: tryDebugger
	"handle errors thrown by the given block and log a freezed version of them in aCollection"
	aBlock on: Error, Halt do: [ :err|
		self logStartupError: err into: aCollection tryDebugger: tryDebugger]