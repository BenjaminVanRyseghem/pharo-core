morphic ui
workingCopyListMorph
	"this method is not sent anymore"
	
	^ (PluggableMultiColumnListMorph
		on: self
		list: #workingCopyList
		selected: #workingCopySelection
		changeSelected: #workingCopySelection:
		menu: #workingCopyListMenu:)
		gapSize: 40;
		yourself