*Deprecated30
attachShortcutCategory: aByteSymbol to: aClass
	self deprecated: 'Static shortcuts should not be used. Configure them locally in your morph, or use #setAsGlobalCategory: to configure a globally system category'.
	KMRepository default attachCategoryName: aByteSymbol to: aClass.