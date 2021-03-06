specs
defaultSpec
	<spec>
	| delta searchBarOffset |
 	
	searchBarOffset := 5 + StandardFonts defaultFont height + 10.
	delta := 25.
	^ SpecLayout composed 
			add: #configBrowserModel origin: 0@0 corner: 1@1 offsetOrigin: 0@searchBarOffset offsetCorner: 0@(delta negated);
			 add: #toolbarModel origin: 0@1 corner: 1@1 offsetOrigin: 0@(delta negated) offsetCorner: 0@0; 
			add: #configurationSearchField origin: 0@0 corner: 1@0 offsetOrigin: 0@0 offsetCorner: 0@searchBarOffset; 
			yourself