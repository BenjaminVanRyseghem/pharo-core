running
run

	RBSmalllintChecker 
		runRule: (RBCompositeLintRule rules: rules)
		onEnvironment: environment.
		
	(environment name , '-Lint.xml') asFileReference ensureDelete writeStreamDo: [ :stream|
		 self generateOn: stream ]