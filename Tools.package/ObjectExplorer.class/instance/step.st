monitoring
step
	"If there's anything in my monitor list, see if the strings have changed."
	| changes |
	changes := false.
	self monitorList keysAndValuesDo: [ :k :v | | string |
		k ifNotNil: [
			k refresh.
			(string := k asString) ~= v ifTrue: [ self monitorList at: k put: string. changes := true ].
		]
	].
	changes ifTrue: [ | sel |
		sel := currentSelection.
		self changed: #getList.
		self noteNewSelection: sel.
	].
	self monitorList isEmpty ifTrue: [ ActiveWorld stopStepping: self selector: #step ].