private
colorForRule: aRule
	| total |
	^ (total := cache criticsOf: aRule)
		ifEmpty: [ Color black ]
		ifNotEmpty: [ 
			(cache falsePositiveOf: aRule) = total
				ifTrue: [ criticModel falsePositiveColor ]
				ifFalse: [ criticModel defaultColor ] ]