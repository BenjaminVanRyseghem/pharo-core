action
printList: aStream

	| tab |
	tab := '- '.
	aStream 
		nextPutAll: self item asString;
		nextPutAll: ' :'.
	self contents do: [:each | 
			aStream nextPutAll: '
'.
			aStream nextPutAll: tab.
			each printList: aStream]
