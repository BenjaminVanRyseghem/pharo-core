accessing
configurations

	configurations ifNil: [ configurations := self class retrieveConfigurationsFrom:  self repository ].
	^configurations