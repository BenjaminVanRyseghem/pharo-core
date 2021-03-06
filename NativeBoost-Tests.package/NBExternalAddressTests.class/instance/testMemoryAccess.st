tests
testMemoryAccess

	| addr |
	
	addr := NativeBoost allocate: 10.
	[
		1 to: 10 do: [:i |
			addr byteAt: i-1 put: i ].
	
		1 to: 10 do: [:i |
			self assert: (addr byteAt: i-1) = i ].
	] ensure: [ NativeBoost free: addr ]
