RBPragmaNode is an AST node that represents a method pragma.

Instance Variables:
	arguments <SequenceableCollection of: RBLiteralNode> our argument nodes
	left <Integer | nil> position of <
	right <Integer | nil> position of >
	selector <Symbol | nil>	the selector we're sending (cached)
	selectorParts <SequenceableCollection of: RBValueToken> the tokens for each keyword