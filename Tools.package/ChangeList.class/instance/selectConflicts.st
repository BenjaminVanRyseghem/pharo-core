menu actions
selectConflicts
	"Selects all method definitions for which there is ALSO an entry in changes"
	
	Cursor read showWhile: 
	[ | class change |1 to: changeList size do:
		[:i | change := changeList at: i.
		listSelections at: i put:
			(change type = #method
			and: [(class := change methodClass) notNil
			and: [(ChangeSet current atSelector: change methodSelector
						class: class) ~~ #none]])]].
	self changed: #allSelections