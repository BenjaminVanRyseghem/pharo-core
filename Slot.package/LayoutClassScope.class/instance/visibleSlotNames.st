accessing
visibleSlotNames
	| result |
	result := OrderedCollection new.
	self do: [ :slot | 
		slot isVisible 
			ifTrue: [ result add: slot name ]].
	^ result asArray