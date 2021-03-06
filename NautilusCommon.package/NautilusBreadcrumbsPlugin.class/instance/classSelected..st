announcement
classSelected: anAnnouncement
	| class |
	class := anAnnouncement itemClass.
	classButton ifNotNil: [ container removeMorph: classButton ].
	container removeMorph: self hFill.
	classButton := PluggableButtonMorph new
							model: self;
							getMenuSelector: #classMenu:;
							actionBlock: [:evt | evt shiftPressed
												ifTrue: [ class browse ]
												ifFalse: [ model ui selectedClass: class ]].
	classButton
		label: class name;
		height: 25.
	class ifNotNil: [ container addMorph: classButton ].
	container addMorph: self hFill.