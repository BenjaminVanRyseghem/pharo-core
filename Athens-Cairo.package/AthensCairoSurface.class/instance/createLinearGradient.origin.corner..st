paints
createLinearGradient: aColorRamp origin: aStart corner: aStop

	self 
		deprecated: 'Use #createLinearGradient:start:stop: instead'
		on: 	'12 April 2013'
		in: 'ConfigurationOfAthens 2.0'.
		
	^self createLinearGradient: aColorRamp start: aStart stop: aStop