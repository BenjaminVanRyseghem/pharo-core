widget - method
methodsForCategoryInGroup: aCategory
	| class group env mthds |

	(class := self selectedClass) ifNil: [ ^ {} ].
	(group := self selectedGroup) ifNil: [ ^ {} ].
	env := self browsedEnvironment.
	mthds := env isSystem
		ifTrue: [
			aCategory = self allLabel
				ifTrue: [ (group methodsFor: class) asOrderedCollection ]
				ifFalse: [ (group methodsFor: class categorised: aCategory) asOrderedCollection ]]
		ifFalse: [
			aCategory = self allLabel
				ifTrue: [ (group methodsFor: class) asOrderedCollection select: [:e | env includesSelector: e selector in: class ]]
				ifFalse: [(group methodsFor: class categorised: aCategory) asOrderedCollection select: [:e | env includesSelector: e selector in: class ]]].
	^ mthds sort: [:a :b | a selector < b selector ]