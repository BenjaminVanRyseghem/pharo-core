printing
printOn: aStream
	"Print me->ancestor"
	aStream
		print: element;
		nextPutAll: ' -> ';
		print: (ancestor ifNil: [ '/' ] ifNotNil: [ ancestor element ])