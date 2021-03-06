as yet unclassified
example6
"Draw two rectangles, filled by linear gradient. 

Note that it should produce same rectangles with exact same fills, because gradient paint 
coordinates are affected by pathTransform matrix.


self example6
"

	| surf paint |
	
	surf := self newSurface: 100@200.
	
	paint := surf 
		createLinearGradient: { 0->Color red .  1->Color green } 
		start: 0@0 
		stop: 50@50.
	
	surf drawDuring: [:can |
		surf clear.
		
		can setPaint: paint.

		can drawShape: (0@0 corner: 50@50).
		
		can pathTransform translateX: 50 Y: 50; rotateByDegrees: 30.
		can drawShape: (0@0 corner: 50@50).
		
	].

	Display getCanvas drawImage: 	surf asForm  at: 0@0
