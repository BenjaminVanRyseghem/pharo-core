accessing
shift: value
	"Set the value of shift"
	self assert: (value >=0 and: [ value < 4 ]).
	shift := value