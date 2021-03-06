dynamic group
addADynamicGroupNamed: entry block: aBlock 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ 
			self openError: entry.
			^ nil]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicGroup 
								named: entry 
								block: aBlock).
								
			GroupAnnouncer uniqueInstance announce: ( AGroupHasBeenAdded group: group into: self ).
			^ group]