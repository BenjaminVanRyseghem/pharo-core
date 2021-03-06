tests - readFrom:pattern:
testReadFromPatternRecognizesCorrectlyTheMMPattern

	| pattern |

	pattern := 'd.mm.yyyy'.
	
	self assertReading: '4.02.2345' as: pattern equals: (Date year: 2345 month: 2 day: 4).
	self assertReading: '4.12.2345' as: pattern equals: (Date year: 2345 month: 12 day: 4).
	self assertReading: '4.2.2345' as: pattern equals: nil 

