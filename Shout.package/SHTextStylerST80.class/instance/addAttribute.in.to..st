private
addAttribute: newAttribute in: range to: charAttributes
	|attributes|
	
	attributes := charAttributes at: range start.
	attributes := attributes, {newAttribute}.
	
	charAttributes 
		from: range start
		to: range end
		put: attributes