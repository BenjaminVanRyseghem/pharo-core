accessing
comments
	"Answer the comments of the receiving parse tree node as intervals of starting and ending indices."
	
	^ comments ifNil: [ #() ] ifNotNil: [ comments ]