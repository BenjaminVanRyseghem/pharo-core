widget - method
highlightCategory: aMethod

		methodWidget resetMethodCache.
		aMethod 
			ifNotNil: [ | category index |
				category := aMethod protocol.
				category = self selectedCategory
					ifFalse:[ 
						index := self getCategories indexOf: ( category ).
						index > 0 ifTrue: [
							categoryWidget searchedElement: index] ] ]