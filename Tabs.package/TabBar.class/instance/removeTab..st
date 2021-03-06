private-actions
removeTab: aTab
	| nextSelection |
	
	selectionHistory size = 1
		ifTrue: [ ^ self delete ].
	
	aTab selected
		ifTrue: [ 
			nextSelection := selectionHistory at: selectionHistory size - 1.
			nextSelection selected: true ].
		
	self removeFromHistory: aTab.
	tabs remove: aTab.
	
	self adjustLayout.
	self triggerEvent: #tabDeleted with: aTab