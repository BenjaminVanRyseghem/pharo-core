manifest
hasTruePositiveOf: ruleId version: versionId
	^ manifestClass respondsTo: (self selectorTruePositiveOf: ruleId version: versionId)  
	