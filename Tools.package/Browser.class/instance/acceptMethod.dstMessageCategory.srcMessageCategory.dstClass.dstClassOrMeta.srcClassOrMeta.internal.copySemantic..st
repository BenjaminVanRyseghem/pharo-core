drag and drop
acceptMethod: methodSel dstMessageCategory: dstMessageCategorySel srcMessageCategory: srcMessageCategorySel dstClass: dstClass dstClassOrMeta: dstClassOrMeta srcClassOrMeta: srcClassOrMeta internal: internal copySemantic: copyFlag 
	| success hierarchyChange higher checkForOverwrite |
	(success := dstClassOrMeta ~~ nil) ifFalse: [^false].
	checkForOverwrite := dstClassOrMeta includesSelector: methodSel.
	hierarchyChange := (higher := srcClassOrMeta inheritsFrom: dstClassOrMeta) | (dstClassOrMeta inheritsFrom: srcClassOrMeta).
	success := (checkForOverwrite not
				or: [self
						overwriteDialogHierarchyChange: hierarchyChange
						higher: higher
						sourceClassName: srcClassOrMeta name
						destinationClassName: dstClassOrMeta name
						methodSelector: methodSel])
				and: [self
						message: methodSel
						compileInClass: dstClassOrMeta
						fromClass: srcClassOrMeta
						dstMessageCategory: dstMessageCategorySel
						srcMessageCategory: srcMessageCategorySel
						internal: internal
						copySemantic: copyFlag].
	^ success