correcting
declareInstVar: name
	"Declare an instance variable."
	self methodClass addInstVarNamed: name.
	"We are changing a class after the scope hierarchy was created, so we need to update the
	Instance Scope"
	self methodNode scope instanceScope vars: self methodClass allInstVarNames.
	^ (node owningScope lookupVar: node name)
		ifNil: [self error: 'should not happen']