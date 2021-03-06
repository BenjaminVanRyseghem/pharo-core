drawing
backgroundColorFor: rect
	"Return the current fillStyle of the receiver."
	| basicColor defaultColor |
	
	defaultColor := Smalltalk ui theme textEditorNormalFillStyleFor: self.
	
	"The next line is the minimal change to get Vistary Theme working for Case 13112 during Pharo 3 Beta. 
	Case 13121 is logged to clean this further in Pharo 4"
	(defaultColor isKindOf: FillStyle) ifTrue: [ ^defaultColor ].
	
	basicColor := self basicColor.
	
	self warningLimit negative ifTrue: [ ^ basicColor ].
	
	textMorph ifNotNil: [ | size |
		size := self textSize.
		( size >= self warningLimit )
			ifTrue: [ | overshoot transitionSpan transitionColor |
				transitionSpan := self warningLimit.
				transitionColor := Color yellow mixed: 0.6 with: self basicColor.
				( size >= self alertLimit )
					ifFalse: [ overshoot := size - self warningLimit ]
					ifTrue: [
						transitionSpan := self alertLimit - self warningLimit.
						basicColor := transitionColor mixed: 0.5 with: self basicColor.
						transitionColor := (Color orange mixed: 0.5 with: Color red) mixed: 0.5 with: self basicColor.
						overshoot := size - self alertLimit ].
				^ CompositeFillStyle fillStyles: {
					(GradientFillStyle 
						ramp: {0->transitionColor. 1 -> basicColor })
						origin: (rect width/2) asFloat @ rect bottom;
						direction: 0@((12+(2*rect height*overshoot / transitionSpan)) negated asFloat);
						normal: 0@1;
						radial: false;
						yourself.
					(GradientFillStyle 
						ramp: {0 -> defaultColor. 0.3->(defaultColor alpha: 0.01) })
						origin: rect left @ (rect height/2) asFloat;
						direction: (rect width)@0;
						normal: 1@0;
						radial: false;
						yourself }
"				^ transitionColor mixed: overshoot / transitionSpan with: basicColor" ] ].
	
	^ basicColor
