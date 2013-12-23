accessing
shoutMorph
	^ shoutMorph ifNil: [self open. shoutMorph]