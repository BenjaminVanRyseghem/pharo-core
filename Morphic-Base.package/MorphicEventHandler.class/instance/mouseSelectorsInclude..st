testing
mouseSelectorsInclude: selector

	| mouseEventTypes allSubscriptions |
	mouseEventTypes := #(
		mouseDown
		mouseMove
		mouseStillDown
		mouseUp
		mouseEnter
		mouseLeave
		mouseEnterDragging
		mouseLeaveDragging
		doubleClick).
	
	allSubscriptions := subscriptions values gather: [ :e | e ].
	^ allSubscriptions anySatisfy: [ :e | (mouseEventTypes includes: e event) and: [ e selector = selector ] ].