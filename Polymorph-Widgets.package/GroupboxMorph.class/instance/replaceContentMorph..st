as yet unclassified
replaceContentMorph: aMorph
	"Replace the content."

	self contentMorph
		removeAllMorphs;
		addMorphBack: aMorph.
	self adoptPaneColor: super paneColorOrNil.
	^aMorph
		