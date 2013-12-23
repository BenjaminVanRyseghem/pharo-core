private
formatCritic: aCritic
	
	^  String streamContents: [:s | aCritic criticNameOn: s ]
