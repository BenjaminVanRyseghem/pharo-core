icon
listIcon2: anItem

	^ self classIconFor: anItem
"	^ self 
		ifPackages: [ self classIconFor: anItem ]
		ifClasses: [ self packageIconFor: anItem ]"