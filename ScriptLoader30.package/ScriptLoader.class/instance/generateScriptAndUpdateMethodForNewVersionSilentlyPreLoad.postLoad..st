ci
generateScriptAndUpdateMethodForNewVersionSilentlyPreLoad: preload postLoad: postLoad
	"Use me to generate the script and update method"
	"self new generateScriptAndUpdateMethodForNewVersion"
	
	self compileScriptMethodWithCurrentPackages: self currentScriptVersionNumber.
	self compileNewUpdateMethodSilentlyPreLoad: preload postLoad: postLoad.
