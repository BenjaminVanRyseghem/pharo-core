private
setDashesOn: aCanvas 
	| buf |
	
	buf := ByteArray new: 8*dashLenghts size.
	
	dashLenghts withIndexDo: [:len :i |
		
		buf nbFloat64AtOffset: (i-1)*8 put: len asFloat
		].

	self
		primSetDashesOn: aCanvas
		lengths: buf
		count: dashLenghts size
		offset: dashOffset
		