elementary steps
loadLatestScriptloader
	"self new loadLatestScriptloader"
	
	self class 
		loadLatestPackage: 'ScriptLoader', self currentMajorVersionNumberWithoutDot 
		fromHub: 'Pharo30' 
	

