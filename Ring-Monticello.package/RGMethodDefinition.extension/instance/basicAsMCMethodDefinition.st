*Ring-Monticello
basicAsMCMethodDefinition
   "Creates a MCMethodDefinition from the receiver"
   self isActive ifTrue: [ 
		self compiledMethod sourceFileStream ifNotNil: [ :file|
			^ self asMCMethodDefinitionFromFile: file]].
	
   ^ MCMethodDefinition
		className: self theNonMetaParentName
 	   	classIsMeta: self isMetaSide
		selector: self selector
		category: self protocol
		timeStamp: self stamp
		source: self sourceCode