as yet unclassified
newLocationMorph
	"Answer a new morph indicating the location of the selected color."

	^ImageMorph new
		form: Cursor crossHair withMask asCursorForm