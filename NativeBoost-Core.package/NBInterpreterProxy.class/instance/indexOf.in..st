helpers
indexOf: ivarName in: aClass

	^ aClass instVarIndexFor: ivarName ifAbsent: [nil]