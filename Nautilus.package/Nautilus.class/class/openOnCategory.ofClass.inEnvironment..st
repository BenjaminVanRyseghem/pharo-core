opening
openOnCategory: aCategory ofClass: aClass inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showInstance: aClass isMeta not.
	instance showGroups: false.
	instance package: aClass package class: aClass category: aCategory method: nil.
	instance open.
		
	^ instance