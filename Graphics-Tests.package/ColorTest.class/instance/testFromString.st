testing
testFromString
	self assert: ((Color fromString: '#FF8800') asHTMLColor sameAs: '#ff8800');
		assert: ((Color fromString: 'FF8800') asHTMLColor sameAs: '#ff8800');
		assert: ((Color fromString: 'white') asHTMLColor sameAs: '#ffffff');
		assert: ((Color fromString: 'black') asHTMLColor sameAs: '#000000');
		assert: ((Color fromString: nil) asHTMLColor sameAs: '#ffffff');
		assert: ((Color fromString: 'inexistent color') asHTMLColor sameAs: '#ffffff'); "should return white"
		assert: ((Color fromString: 'XXXXXX') asHTMLColor sameAs: '#ffffff'); "not alphanumeric"
		assert: ((Color fromString: '00000000') asHTMLColor sameAs: '#ffffff'). "too many digits"
		
	self
		assert: (Color fromString: 'DARKGRAY') = Color darkGray description: 'Color can be specified with a case insensitive color name';
		assert: (Color fromString: '#blue') = Color blue description: 'Color can be specified with a leading literal sharp'.