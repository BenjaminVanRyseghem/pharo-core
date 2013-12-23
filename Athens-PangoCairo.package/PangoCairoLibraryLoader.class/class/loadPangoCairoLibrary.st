as yet unclassified
loadPangoCairoLibrary 
	^ NativeBoost forCurrentPlatform loadModule: self getLibraryPath
