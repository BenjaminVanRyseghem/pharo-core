private
updateBothView
	| selectedPackage selectedClass |
	
	
	selectedPackage := self selectedPackage.
	selectedClass := self selectedClass.
	super updateBothView.
	"I need to restore selection (otherwise, nothing goes to the right position)"
	list model updateList.
	self selectedPackage: selectedPackage.
	self selectedClass: selectedClass.