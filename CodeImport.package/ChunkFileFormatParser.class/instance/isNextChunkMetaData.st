testing
isNextChunkMetaData
	"If the next chunk starts with $!, it will be an expression that after evaluation returns an object who knows how to read some metadata. 
	I.e. A chunk for comment reading should be something like:
	
	!SomeClass commentStamp: '<historical>' prior: 0!
	
	The object returned by the expression of that tag must understand #scanFrom:
	"
	
	^readStream peekFor: $!