private
packageNameOf: elem
	^ elem mcWorkingCopy packageName
	"elem isCompiledMethod 
		ifTrue: [MCWorkingCopy managersForClass: (elem methodClass) selector: (elem selector) do: [: package | ^ package packageName ]]	
			
		ifFalse: [MCWorkingCopy managersForClass: elem  do: [: package | ^ package packageName ]]	
				"