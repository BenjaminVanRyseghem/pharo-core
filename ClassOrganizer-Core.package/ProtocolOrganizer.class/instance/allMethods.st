accessing
allMethods

	^ self protocols gather: [:p | p methods ].