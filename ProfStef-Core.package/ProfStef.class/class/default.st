class initialization
default 
	^ instance ifNil: [instance := self new]