interpret
executeOn: interpreter

	^interpreter pushClosureCopyCopiedValues: copiedValues args: arguments jumpTo: destination