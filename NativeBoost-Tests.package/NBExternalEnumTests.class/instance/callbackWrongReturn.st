accessing
callbackWrongReturn
	^ self cbClass
		on: [ :anInt | 
			"this callback will return a plain integer"
			self enumClass itemAt: anInt ]