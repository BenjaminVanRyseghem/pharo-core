accessing
doubleClickSelector: aSelector
	"set doubleClickBlock from a selector representing a message to sent to the model on double-click"
	self doubleClickBlock: [self model perform: aSelector]