morphic
menu: aMenu shifted: aBoolean
	aMenu
		add: 'Foo' 
		target: self 
		selector: #halt.
	^ aMenu