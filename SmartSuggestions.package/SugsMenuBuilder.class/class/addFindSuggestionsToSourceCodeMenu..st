builder
addFindSuggestionsToSourceCodeMenu: aBuilder 
	<nautilusGlobalSourceCodeMenu>
	<RubSmalltalkEditorMenu>
	
	| model |
	model := aBuilder model.
	aBuilder
				item: 'Suggestions'; 
				selector: #showMenuFor:;	
				arguments: {model};
				target: self; 
				keyText: 't';
				order: 0.
	aBuilder items last withSeparatorAfter .
			
	
