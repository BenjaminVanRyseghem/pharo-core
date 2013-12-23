browser compatibility
labelString

	^ self ui
		ifNil: [ 'Nautilus' ]
		ifNotNil: [:theui | theui title ]