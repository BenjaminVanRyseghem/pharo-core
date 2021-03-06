ui requests
openComparisonFrom: targetMethodSource
					to: originalMethodSource
					belongingTo: aClass
					from: aChange 
					labeled: aLabel 
					inWindowLabeled: aWindowLabel 
	| diffMorph diffBuilder difference win |
	PolymorphSystemSettings usePolymorphDiffMorph 
		ifTrue: [ ^ self openPolymorphComparisonFrom: originalMethodSource 
					to: targetMethodSource
					belongingTo: aClass
					from: aChange
					labeled: aLabel
					inWindowLabeled: aWindowLabel   ].
	diffBuilder :=  TextDiffBuilder
			from: originalMethodSource 
			to: targetMethodSource.
	difference := diffBuilder buildDisplayPatch.
	win := Smalltalk tools workspace openContents: difference.
	win label: aLabel.
					
				