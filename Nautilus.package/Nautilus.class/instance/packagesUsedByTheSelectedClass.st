private
packagesUsedByTheSelectedClass

	| result class |
	result := OrderedCollection new.
	class := self selectedClass.
	
	class ifNil: [^{}].
	result add: class package.
	result addAll: (self foundExtentionsIn: class).
	result := result intersection: self packages.
	^ result select:[:each | each notNil]