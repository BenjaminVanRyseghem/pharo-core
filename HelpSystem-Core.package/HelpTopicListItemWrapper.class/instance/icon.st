accessing
icon
	"Either return the icon for the given topic"
	
	| symbol |
	item icon notNil ifTrue: [^item icon].
	symbol := item hasSubtopics 
					 ifTrue: [#bookIcon] 
			  		 ifFalse: [#pageIcon].
	^HelpIcons iconNamed: symbol