history
previous
	self browsingHistory pauseDuring: [
		self adopt: self browsingHistory previous.
		self triggerEvent: #historyChanged ]