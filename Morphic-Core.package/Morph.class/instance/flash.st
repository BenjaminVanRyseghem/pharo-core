macpal
flash
	| fs w |
	fs := self fillStyle.
	self fillStyle: Color black.
	(w := self world) ifNotNil: [w displayWorldSafely].
	self fillStyle: fs