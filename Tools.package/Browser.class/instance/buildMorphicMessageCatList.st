initialization
buildMorphicMessageCatList

	| myMessageCatList |

	(myMessageCatList := PluggableListMorph new) 
			on: self list: #messageCategoryList
			selected: #messageCategoryListIndex changeSelected: #messageCategoryListIndex:
			menu: #messageCategoryMenu: 
			keystroke: #arrowKey:from:.
	myMessageCatList enableDragNDrop: true.
	^myMessageCatList
