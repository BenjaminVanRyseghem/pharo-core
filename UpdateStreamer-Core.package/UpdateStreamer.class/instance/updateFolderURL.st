accessing
updateFolderURL
	"in the future it may be wiser to use SystemVersion to avoid to duplicate the logic"
	"SystemVersion current major"
	^ 'http://', self server, self path, (Smalltalk globals at: #ScriptLoader) currentMajorVersionNumber asString, '/'