styling
evaluateWithoutStyling: aBlock 
	| t |
	t := stylingEnabled.
	stylingEnabled := false.
	^ aBlock
		ensure: [stylingEnabled := t]