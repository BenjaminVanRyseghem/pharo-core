initialization
initialize
	"ChangeSet initialize"

	AllChangeSets ifNil: [ AllChangeSets := OrderedCollection new ].
	self gatherChangeSets.
	FileServices registerFileReader: self