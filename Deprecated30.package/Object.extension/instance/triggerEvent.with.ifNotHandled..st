*Deprecated30
triggerEvent: anEventSelector
with: anObject
ifNotHandled: anExceptionBlock 
	self deprecated: 'do not used it anymore!' on: '21 May 2013' in: #Pharo30.
    ^self 
		triggerEvent: anEventSelector
		withArguments: (Array with: anObject)
		ifNotHandled: anExceptionBlock