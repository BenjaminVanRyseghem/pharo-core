comparing
= aObject

	^ aObject class = self class and: [ manifestClass = aObject manifest ]