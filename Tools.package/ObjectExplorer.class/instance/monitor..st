monitoring
monitor: anObjectExplorerWrapper
	"Start stepping and watching the given wrapper for changes."
	anObjectExplorerWrapper ifNil: [ ^self ].
	self world ifNil: [ ^self ].
	self monitorList at: anObjectExplorerWrapper put: anObjectExplorerWrapper asString.
	self world startStepping: self at: Time millisecondClockValue selector: #step arguments: #() stepTime: 200.