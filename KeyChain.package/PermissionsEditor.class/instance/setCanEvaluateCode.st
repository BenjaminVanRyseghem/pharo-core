initialize
setCanEvaluateCode
	canEvaluateCode
		state: false;
		enabled: false;
		whenChangedDo: [ self checkRoot ];
		label: 'Can evaluate code ?'