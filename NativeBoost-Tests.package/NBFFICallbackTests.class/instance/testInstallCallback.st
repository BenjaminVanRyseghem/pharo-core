tests - native callbacks
testInstallCallback

	| callback |
	
	callback := self createNativeCallback.

	callback install.
	self assert:(callback address notNil).
	callback uninstall.