*Morphic-Base-Balloon
addFillStyleMenuItems: aMenu hand: aHand from: aMorph
	"Add the items for changing the current fill style of the receiver"
	aMenu add: 'change origin' translated target: self selector: #changeOriginIn:event: argument: aMorph.
	aMenu add: 'change orientation' translated target: self selector: #changeOrientationIn:event: argument: aMorph.