initialization
initialize
	
	text := ''.
	container := PanelMorph new
					color: Color transparent;
					changeTableLayout;
					cellInset: 8;
					listDirection: #topToBottom;
					cellPositioning: #topLeft;
					hResizing: #shrinkWrap;
					vResizing: #shrinkWrap.
	self buildTextMorph