initialization
initializeWidgets

	self instantiateModels: #(
		addButtonModel ButtonModel
		addAllButtonModel ButtonModel 
		removeButtonModel ButtonModel
		removeAllButtonModel ButtonModel
		nextButtonModel ButtonModel ).
		
	self setFocusOrder.

	self setAddButtonModel. 
	self setAddAllButtonModel. 
	self setRemoveButtonModel. 
	self setRemoveAllButtonModel. 
	self setNextButtonModel. 