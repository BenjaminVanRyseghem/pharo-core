initialize-release
initialize 

	self status ~= CAIRO_STATUS_SUCCESS ifTrue: [ self error: 'Something is wrong!' ].
		
	self registerAsExternalResource 