building dictionary
buildByDate: aBlock
	"Return an association where key is a Dictionary and value is the list sorted"

	| result tempList |
	result := Dictionary new.
	tempList := self methodReferenceList copy sort: aBlock.
	tempList do: [:each |
		| key1 key2 value |
		key1 := each timeStamp asDate.
		key2 := each realClass.
		value := each.		
		(result includesKey: key1)
			ifFalse: [result at: key1 put: Dictionary new].
		((result at: key1) includesKey: key2)
			ifFalse: [(result at: key1) at: key2 put: OrderedCollection new].
		((result at: key1) at: key2) add: value].
	^(Association key: result value: tempList)