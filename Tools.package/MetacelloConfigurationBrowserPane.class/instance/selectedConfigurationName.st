accessing
selectedConfigurationName
	self selectedConfiguration ifNil: [ ^String empty ].
	^self selectedConfiguration readStream upTo: $-.