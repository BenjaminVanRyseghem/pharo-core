initialization
process: aProcess controller: aController context: aContext
	self flag: 'Do not ignore the controller parameter'.
	self session: (self class spanNewSessionForContext: aContext fromProcess: aProcess)