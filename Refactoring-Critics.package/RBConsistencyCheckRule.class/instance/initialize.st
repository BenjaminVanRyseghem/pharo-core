initialization
initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'`@object size == 0'
			'`@object size = 0'
			'`@object size > 0'
			'`@object size >= 1'
			'`@object == nil'
			'`@object = nil'
			'`@collection at: 1'
			'`@collection at: `@collection size' )
		do: [ :node :answer | node ]