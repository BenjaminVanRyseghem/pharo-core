menus
defsOfSelection
	"Open a browser on all defining references to the selected instance variable, if that's what's currently selected."
	| aClass sel |

	(aClass := self parentObject class) isVariable ifTrue: [^ self changed: #flash].
	sel := self selector.
	self systemNavigation  browseAllStoresInto: sel from: aClass