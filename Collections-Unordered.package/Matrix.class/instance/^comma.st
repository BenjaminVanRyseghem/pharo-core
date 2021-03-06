copying
, aMatrix
	"Answer a new matrix having the same number of rows as the receiver and aMatrix,
	 its columns being the columns of the receiver followed by the columns of aMatrix."
	|newCont newCols anArray oldCols a b c|

	[nrows = aMatrix rowCount] assert.
	newCont := Array new: self size + aMatrix size.
	anArray := aMatrix privateContents.
	oldCols := aMatrix columnCount.
	newCols := ncols + oldCols.
	a := b := c := 1.
	1 to: nrows do: [:r |
		newCont replaceFrom: a to: a+ncols-1 with: contents startingAt: b.
		newCont replaceFrom: a+ncols to: a+newCols-1 with: anArray startingAt: c.
		a := a + newCols.
		b := b + ncols.
		c := c + oldCols].
	^self class rows: nrows columns: newCols contents: newCont
		
