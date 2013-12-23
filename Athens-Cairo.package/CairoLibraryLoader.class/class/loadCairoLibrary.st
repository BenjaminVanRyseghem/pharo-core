as yet unclassified
loadCairoLibrary 
	^ NativeBoost forCurrentPlatform loadModule: self getLibraryPath
