*manifest-core
smallLintCritics
	
	| array |
			
	array := OrderedCollection new: self numberSelectors.
	self classes do: [:cl | 
		self selectorsForClass: cl do: [:sel | array add:  (cl>>sel)]]. 
			
	^ array