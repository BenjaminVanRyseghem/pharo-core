menus
classListMenu: aMenu

	^ aMenu addList: #(
		('Definition'				editClass)
		('Comment'				editComment)
		-				
		('Browse full (b)'		browseMethodFull)		
		('Class refs (N)'			browseClassRefs)	
		-
		('FileIn'					fileInClass)
		('FileOut'				fileOutClass)
		-
		('Rename...'				renameClass)	
		('Remove'				removeClass) 
		-
		('Remove existing'		removeUnmodifiedCategories))
