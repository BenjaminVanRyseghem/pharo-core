initialization
initInstructions
	" self initInstructions "
	| data |

	instructions := IdentityDictionary new.

	data := OrderedCollection new.
	data addAll: self instructionData;
		addAll: self instructionsCDQ;
		addAll: self instructionsOther.
	
	data do: [:dt | 
		instructions at: dt first put: (self fromArray: dt) ].
	
	^ instructions