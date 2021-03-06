opening
openOn: process context: context label: title contents: contentsStringOrNil fullView: bool 
	"Open a notifier in response to an error, halt, or notify. A notifier view
	just shows a short view of the sender stack and provides a menu that
	lets the user open a full debugger."
	| fullView |
	fullView := (bool or: [self alwaysOpenFullDebugger]).
	
	Smalltalk tools userManager canDebug ifFalse: [ 
		UIManager default spawnNewProcessIfThisIsUI: process.
		process suspend.
		^ self ].
	
	^ UIManager default 
		openDebuggerOn: process 
		context: context 
		label: title 
		contents: contentsStringOrNil 
		fullView: fullView