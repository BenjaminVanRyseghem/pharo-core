*NativeBoost-core
nbCall: fnSpec options: callOptions
	" you can override this method if you need to"

	^ (self nbCalloutIn: thisContext sender)
		convention: self nbCallingConvention;
		options: callOptions;
		function: fnSpec module: self nbLibraryNameOrHandle 