accessing
environment
	^ environment ifNil: [ environment := Win32Environment new ]