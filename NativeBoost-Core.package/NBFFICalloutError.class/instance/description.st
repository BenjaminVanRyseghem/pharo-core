accessing
description

	^ NBErrorDescriptions at: errorCode ifAbsent: [
		(NBFFICallout messageForCode: errorCode) ifNil: [
		'Error during FFI call: ' , errorCode asString]].
	
