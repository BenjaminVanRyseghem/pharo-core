install-uninstall
installInClass: aClass selector: aSymbol 
	"Install a new method containing a breakpoint.
	The receiver will remember this for unstalling it later"

	| breakMethod |
	breakMethod := self compilePrototype: aSymbol in: aClass.
	breakMethod ifNil: [^ nil].
	self installed at: breakMethod put: aClass >> aSymbol. "old method"
	aClass basicAddSelector: aSymbol withMethod: breakMethod.