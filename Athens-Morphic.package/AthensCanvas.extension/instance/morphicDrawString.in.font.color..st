*Athens-Morphic
morphicDrawString: string in: rect font: aFont color: aColor

	self pathTransform restoreAfter: [
		self pathTransform translateX: rect left Y: rect top.
		self clipBy: (0@0 corner: rect extent) during: [

			self 
				setFont: aFont.
				
			self pathTransform translateX: 0 Y: aFont getPreciseAscent.
			self
				setPaint: aColor;
				drawString: string.
			]
	]