accessing
dictionary

	dictionary ifNil: [
		self parentNode 
			ifNil:  [
				self model level = 2
					ifTrue: [dictionary := self model dictionary].
				self model level = 3
					ifTrue:[dictionary := self model dictionary at: self item]]
			ifNotNil: [dictionary := self model dictionary at: (self parentNode item)]].
	^dictionary