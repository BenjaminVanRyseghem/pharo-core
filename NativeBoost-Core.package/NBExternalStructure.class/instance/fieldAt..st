private
fieldAt: aFieldName
	"This method is used by auto-generated accessor method(s) to generate code for accessing
	field(s) of external structure. Do not override"
	^ (self nbCalloutIn: thisContext sender)
		function: 'oop (void *data)'
		emit: [:gen | self emitRead: aFieldName generator: gen. ]
