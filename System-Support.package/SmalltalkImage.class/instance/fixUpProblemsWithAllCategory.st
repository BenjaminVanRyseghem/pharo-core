housekeeping
fixUpProblemsWithAllCategory
	"Moves all methods that are in formally classified a category named '-- all --' into the default 'as yet unclassified' category"

	"Smalltalk fixUpProblemsWithAllCategory"

	| methodCount classCount |
	self flag: #ShouldBeMovedInClassOrganization.
	methodCount := 0.
	classCount := 0.
	self systemNavigation allBehaviorsDo:
		[:aClass | | org any | org := aClass organization.
			(org categories includes: #'-- all --') ifTrue:
				[any := false.
				aClass selectorsDo:
					[:aSelector | | aCategory |
						aCategory := org categoryOfElement: aSelector.
						aCategory = #'-- all --' 
							ifTrue: [
								org 
									classify: aSelector 
									under: Protocol unclassified
									suppressIfDefault: false.
								self crTrace: aClass name, ' >> ', aSelector.
								methodCount := methodCount + 1.
								any := true ] ].
			any ifTrue: [classCount := classCount + 1].
			org removeEmptyCategories]].

	self crTrace: methodCount printString, ' methods in ', classCount printString, ' classes moved from "-- all --" to "as yet unclassified"'
