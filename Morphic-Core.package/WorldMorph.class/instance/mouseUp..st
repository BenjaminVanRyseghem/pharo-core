event handling
mouseUp: evt
	self removeAlarm: #invokeWorldMenu:.
	super mouseUp: evt.