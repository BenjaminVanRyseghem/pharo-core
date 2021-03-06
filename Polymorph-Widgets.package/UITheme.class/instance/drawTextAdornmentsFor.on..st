border-styles
drawTextAdornmentsFor: aPluggableTextMorph on: aCanvas
	"Indicate edit status for the given morph."
	
	(aPluggableTextMorph hasEditingConflicts or: [aPluggableTextMorph hasValidText not])
		ifTrue: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color red on: aCanvas].
	aPluggableTextMorph hasUnacceptedEdits
		ifTrue: [aPluggableTextMorph model wantsDiffFeedback
					ifTrue: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color yellow darker on: aCanvas]
					ifFalse: [
						aPluggableTextMorph model wantsVisualFeedback
							ifTrue: [ ^self drawTextAdornmentFor: aPluggableTextMorph color: Color orange on: aCanvas] ] ].
	aPluggableTextMorph model wantsDiffFeedback
		ifTrue: [self drawTextAdornmentFor: aPluggableTextMorph color: Color green on: aCanvas]