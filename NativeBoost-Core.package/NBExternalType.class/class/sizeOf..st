public
sizeOf: aTypeName

	^ (NBFFICallout new resolveType: aTypeName) typeSize