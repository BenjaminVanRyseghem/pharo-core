surface plugin callbacks
fnPtr: anFnName

	^ NativeBoost loadSymbol: anFnName fromModule: self nbLibraryNameOrHandle.

