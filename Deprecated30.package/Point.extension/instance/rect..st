*Deprecated30
rect: aPoint 
	"Answer a Rectangle that encompasses the receiver and aPoint. This is the most general infix way to create a rectangle."
	self deprecated: 'Use rectangle: instead' on: '15 August 2013'  in: #Pharo30. 
	^ self rectangle: aPoint