private-tab label
modifyClippingBounds: clippingBounds
	| rightOffset |

	rightOffset := -10.
	closeIcon visible ifTrue: [ rightOffset := rightOffset - 14 ].

	^ clippingBounds expandBy: (0@0 corner: rightOffset@0)