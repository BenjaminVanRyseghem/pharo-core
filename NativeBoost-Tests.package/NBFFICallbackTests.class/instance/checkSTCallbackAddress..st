tests - language-side callback
checkSTCallbackAddress:  callback

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	

	^ self nbCallout 
		function: #(void *  (NBQSortCallback  callback))
		emit: [:gen | 	gen asm pop: EAX ] 
