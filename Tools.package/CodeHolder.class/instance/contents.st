contents
contents
	"Answer the source code or documentation for the selected method"

	self showingByteCodes ifTrue:
		[^ self selectedBytecodes].

	^ self selectedMessage