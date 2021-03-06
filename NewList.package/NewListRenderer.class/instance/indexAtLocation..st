drawing - private
indexAtLocation: aPoint
	"return the number of the row at aPoint"
	"Here we assume that all the item have the same height"
	| y |
	y := aPoint y.
	(y < (self top + self headerHeight)) ifTrue: [ ^ 1 ].
	^((y - self top - self headerHeight // self itemHeight) + 1) min: self listSize max: 1