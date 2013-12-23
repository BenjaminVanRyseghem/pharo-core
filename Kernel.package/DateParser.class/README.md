Read a Date from the stream based on the pattern which can include the tokens:
	
		y = A year with 1-n digits
		yy = A year with 2 digits
		yyyy = A year with 4 digits
		m = A month with 1-n digits
		mm = A month with 2 digits
		d = A day with 1-n digits
		dd = A day with 2 digits
		
	...and any other Strings inbetween. Representing $y, $m and $d is done using
	\y, \m and \d and slash itself with \\. Simple example patterns:

		'yyyy-mm-dd'
		'yyyymmdd'
		'yy.mm.dd'
		'y-m-d'

	A year given using only two decimals is considered to be >2000.