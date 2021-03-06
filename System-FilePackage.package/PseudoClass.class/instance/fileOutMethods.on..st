filein/fileout
fileOutMethods: aCollection on: aStream
	"FileOut all methods with selectors taken from aCollection"
	| cat categories |
	categories := Dictionary new.
	aCollection do:[:sel|
		cat := self organization categoryOfElement: sel.
		cat = self removedCategoryName ifFalse:[
			(categories includesKey: cat) 
				ifFalse:[categories at: cat put: Set new].
			(categories at: cat) add: sel].
	].
	categories associationsDo:[:assoc|
		cat := assoc key.
		assoc value do:[:sel|
			aStream cr.
			(self sourceCode at: sel) fileOutOn: aStream.
		].
	].