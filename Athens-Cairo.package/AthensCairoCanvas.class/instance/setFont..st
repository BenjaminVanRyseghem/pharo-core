drawing text
setFont: aFont
	fontRenderer := aFont glyphRendererOn: surface.
	^ fontRenderer