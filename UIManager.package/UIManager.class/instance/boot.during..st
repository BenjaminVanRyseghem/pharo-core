image startup
boot: bootingFromDisk during: aBlock

	bootingFromDisk ifTrue: [ 
		"use non-interactive manager while processing startup list"
		self class default: (StartupUIManager replacing: self) ].

	aBlock ensure: [ self class default: self ].

	self onSnapshot: bootingFromDisk