*NativeBoost-Core
nbArgumentNames
	"Answer the method's argument names. We using a separate method, 
	to get arg names not from source code directly, but from method properties, collected at
	compile time. Useful, when there is no source code available (for some reason)"
	
	^ self propertyValueAt: #nbArgumentNames ifAbsent: [ 
		self  propertyValueAt: #nbArgumentNames put: self argumentNames
	 ]
