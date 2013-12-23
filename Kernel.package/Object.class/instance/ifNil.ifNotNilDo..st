nil testing
ifNil: nilBlock ifNotNilDo: aBlock 
	"please use #ifNil:ifNotNil: "

	^ aBlock value: self
