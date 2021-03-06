tests-Getting Started
testShowingProgressBar
	| materializedString |
	(Smalltalk globals includesKey: #FLProgressSerialization) ifFalse: [
		" Needs:
		(ConfigurationOfFuel project latestVersion) load: 'FuelProgressUpdate'.
		"
		^self ].
	
	FileStream forceNewFileNamed: 'numbers.fuel' do: [:aStream |
		FLSerializer newDefault 
			showProgress;
			serialize: (1 to: 200000) asArray 
			on: aStream binary ].
	
	FileStream oldFileNamed: 'numbers.fuel' do: [:aStream | 
		FLMaterializer newDefault 
			showProgress;
			materializeFrom: aStream binary ].