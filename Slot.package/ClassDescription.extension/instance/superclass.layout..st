*Slot
superclass: aSuperclass layout: aLayout
	layout := aLayout. 
"	layout host: self. --> this is done in #buildFrom:scope:host:"
	
	self
		superclass: aSuperclass
		methodDictionary: MethodDictionary new
		format: aLayout format.
	
	instanceVariables := layout instanceVariables asArray