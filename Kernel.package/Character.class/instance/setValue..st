private
setValue: newValue
	value ifNotNil:[^self error:'Characters are immutable'].
	value := newValue.