initialize
initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		STEditor ).
				
	self selector text: ''.
	self choice whenObjectChangedDo: [:b | self setValueTo: b ]