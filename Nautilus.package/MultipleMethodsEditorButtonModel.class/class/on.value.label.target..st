instance creation
on: aScroller value: value label: label target: target

	^ self new
		model: aScroller;
		vScrollValue: value;
		label: label;
		target: target;
		yourself