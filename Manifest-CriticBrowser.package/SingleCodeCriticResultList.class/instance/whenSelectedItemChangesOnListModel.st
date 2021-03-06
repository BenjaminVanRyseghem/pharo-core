initialization
whenSelectedItemChangesOnListModel

	criticsModel whenSelectedItemChanged: [ :selection |
		 sourceCodeModel setSelection: (0 to:0). 	
		rule isNil ifFalse: [
			(selection
				ifNil: [ self setTextModelForNil ]
				ifNotNil: [
					toolbarModel critic: selection.
					rule isTransformationRule 
						ifTrue: [ self setTextModelForTransformationRule: selection ]
						ifFalse: [ self setTextModelForClassOrMethod: selection ]]
				)
			]
		]