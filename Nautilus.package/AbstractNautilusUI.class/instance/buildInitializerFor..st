private
buildInitializerFor: aVariableList

	^ String streamContents: [ :stream|
		aVariableList 
			do: [ :varName|	stream << varName << ': ' << varName]
			separatedBy: [ stream << ' ' ].
		stream cr cr tab << '^ self new'; cr.
		aVariableList do: [ :varName|
			stream tab tab << varName << ': ' << varName << ';'; cr].
		stream tab tab << 'yourself']