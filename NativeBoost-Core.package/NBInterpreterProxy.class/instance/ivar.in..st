helpers
ivar: ivarName in: aClass
	"answer an offset of ivar relative to oop"
	| index |
	index := aClass instVarIndexFor: ivarName ifAbsent: [nil].
	^ objectFormat instVarOffsetAt: index.