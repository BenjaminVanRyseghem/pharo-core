dispatching
dispatchKeystroke: aKeyEvent

	| chain |
	KMLog log: aKeyEvent printString, String cr.

	KMBuffer uniqueInstance addEvent: aKeyEvent.

	chain := KMDispatchChain from: (KmGlobalDispatcher new dispatcher: self; yourself) andDispatcher: self.
	chain dispatch: aKeyEvent.