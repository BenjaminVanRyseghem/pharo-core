world menu
findAWindowSatisfying: qualifyingBlock orMakeOneUsing: makeBlock 
	"Locate a window satisfying a block, open it, and bring it to the front.  Create one if necessary, by using the makeBlock"

	
	submorphs do: 
			[:aMorph | | aWindow | 
			(((aWindow := aMorph renderedMorph) isSystemWindow) 
				and: [qualifyingBlock value: aWindow]) 
					ifTrue: 
						[aWindow isCollapsed ifTrue: [aWindow expand].
						aWindow activateAndForceLabelToShow.
						^self]].
	"None found, so create one"
	makeBlock value openInWorld