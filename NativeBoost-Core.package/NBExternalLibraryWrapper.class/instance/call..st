utils
call: fnSpec
	" you can override this method if you need to"

	^ (self nbCalloutIn: thisContext sender)
		cdecl;	
		function: fnSpec module: self libraryNameOrHandle
