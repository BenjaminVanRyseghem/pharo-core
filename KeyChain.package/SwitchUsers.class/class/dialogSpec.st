specs
dialogSpec
	<spec>
	| imageHeight |
	imageHeight := 140.
	
	^ SpecLayout composed
		add: #avatar origin: 0.5@0 corner: 0.5@0 offsetOrigin: (-60)@0 offsetCorner: 60@imageHeight;
		add: #users origin: 0@0 corner: 1@0 offsetOrigin: 0@imageHeight offsetCorner: 0@(imageHeight+25);
		add: #add origin: 0@0 corner: 0@0 offsetOrigin: 0@(imageHeight+25) offsetCorner: 50@(imageHeight+50);
		add: #edit origin: 0@0 corner: 1@0 offsetOrigin: 50@(imageHeight+25) offsetCorner: (-50)@(imageHeight+50);
		add: #remove origin: 1@0 corner: 1@0 offsetOrigin: (-50)@(imageHeight+25) offsetCorner: 0@(imageHeight+50);
		yourself