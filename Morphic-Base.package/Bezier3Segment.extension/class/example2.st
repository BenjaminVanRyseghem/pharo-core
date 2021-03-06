*Morphic-Base-Balloon-examples
example2
	"draws a cubic bezier on the screen"
	| c canvas |
	c := Bezier3Segment new
				from: 0 @ 0
				via: 0 @ 100
				and: 100 @ 0
				to: 100 @ 100.
	canvas := BalloonCanvas on: Display.
	canvas aaLevel: 4.
	canvas
		drawBezier3Shape: c asPointArray
		color: Color transparent
		borderWidth: 1
		borderColor: Color black