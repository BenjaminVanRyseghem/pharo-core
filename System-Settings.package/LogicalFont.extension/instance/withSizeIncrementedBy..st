*system-settings-browser
withSizeIncrementedBy: anInteger
	^ LogicalFont 
		familyName: self familyName 
		fallbackFamilyNames: self fallbackFamilyNames
		pointSize: self pointSize + anInteger
		stretchValue: self stretchValue
		weightValue: self weightValue
		slantValue: self slantValue 