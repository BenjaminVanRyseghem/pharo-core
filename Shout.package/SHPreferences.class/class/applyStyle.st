private
applyStyle
	| table |
	table := Groups values gather: [:group | group styleForTable].
	SHTextStylerST80 styleTable: table.
	SHRBTextStyler styleTable: table.