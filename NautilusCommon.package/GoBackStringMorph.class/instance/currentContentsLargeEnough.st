private
currentContentsLargeEnough
	^(self font widthOfString: self contents) <= (self ownerChain collect: [ :morph | morph extent x ]) min