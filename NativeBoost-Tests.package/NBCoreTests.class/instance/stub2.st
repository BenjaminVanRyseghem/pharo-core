misc
stub2
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin >
	
	^ NBNativeCodeGen generateCode: [:gen | 
			
			self return0Code
		
		] andRetry: thisContext