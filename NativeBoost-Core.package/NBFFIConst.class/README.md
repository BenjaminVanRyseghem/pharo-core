My instances can be used to push an arbitrary integer value to the stack.
Could be useful for purposes, when some of the external function values is known beforehead,
like size of structure etc.

For emitting a constant as argument  for a function just put it into an argument list, like: 

apiCall: #( long 'IsBadWritePtr' (10) ) module: 'Kernel32.dll'

here, 10 is a constant, which will be pushed on stack