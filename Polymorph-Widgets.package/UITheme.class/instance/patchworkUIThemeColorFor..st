basic-colors
patchworkUIThemeColorFor: aWindowOrModel
	"Answer the colour for the given window."
	^ aWindowOrModel ifNotNil: [
		(aWindowOrModel respondsTo: #patchworkUIThemeColor) 
		ifTrue: [aWindowOrModel patchworkUIThemeColor]
		ifFalse: [(aWindowOrModel class respondsTo: #patchworkUIThemeColor) 
			ifTrue: [aWindowOrModel class patchworkUIThemeColor]
			ifFalse: [self settings windowColor]]]