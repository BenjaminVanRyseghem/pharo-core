defaults
initialize
	enabled := caseSensitive := smartCharacters := false.
	expandPrefixes := false.
	captureNavigationKeys := false.
	useEnterToAccept := false.
	smartCharactersMapping := Dictionary new.
	smartCharactersMapping
		at: $( put: $);
		at: $[ put: $];
		at: ${ put: $};
		at: $" put: $";
		at: $' put: $'.
	smartCharactersWithSingleSpace := ''.
	smartCharactersWithDoubleSpace := '[]'.