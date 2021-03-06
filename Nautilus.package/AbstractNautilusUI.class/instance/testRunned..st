system announcements
testRunned: anAnnouncement

	| collection class correspondingClass |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	class := anAnnouncement testResult.
	correspondingClass := anAnnouncement testResult correspondingClass.
	collection :=  self getList2.
	
	(collection includesAnyOf: {class. correspondingClass})
		ifTrue: [ 
			self removeClassFromMethodsIconsCache: class.
			self removeClassFromMethodsIconsCache: correspondingClass.
			self updateClassView.
			self update ].