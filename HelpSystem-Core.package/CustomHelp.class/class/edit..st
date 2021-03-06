editing
edit: aSelector
	"Open a Workspace on the text in the given selector.
	When accepted, compile the result as a help topic."

	| topic workspace |
	topic := (self respondsTo: aSelector) 
			ifTrue:[self perform: aSelector]
			ifFalse:[HelpTopic title: 'Untitled' contents: 'Please edit this topic. 
To change the topic title, edit the window label.'].
	workspace := UIManager default
		edit: topic contents
		label: topic title
		accept: [:text| self accept: aSelector title: workspace containingWindow label contents: text].
