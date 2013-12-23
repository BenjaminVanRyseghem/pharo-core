See my #rationale.

This rule pays attention not to flag methods with pragmas and test methods which are likely to be sent through reflection.

Now if your code is used and extended by others, better use a deprecation mechanism, following the pattern: 
	
	foo
		self deprecated: ''Use bar instead ''. 
		^ self bar