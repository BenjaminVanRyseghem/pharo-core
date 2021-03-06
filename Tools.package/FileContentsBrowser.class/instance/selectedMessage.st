edit pane
selectedMessage
	"Answer a copy of the source code for the selected message selector."

	| class selector |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	contents := class sourceCodeAt: selector.
	self browseWithPrettyPrint
		ifTrue: [ contents := class compiler format: contents ].
	self showingAnyKindOfDiffs
		ifTrue: [ 
			contents := self
				methodDiffFor: contents
				class: self selectedClass
				selector: self selectedMessageName
				meta: self metaClassIndicated ].
	^ contents