*Polymorph-Widgets
passivateTopWindow
	"Make no window the top window."

	|oldTop|
	oldTop := TopWindow.
	TopWindow := nil.
	oldTop ifNotNil: [
		oldTop
			rememberKeyboardFocus: ActiveHand keyboardFocus;
			passivate]