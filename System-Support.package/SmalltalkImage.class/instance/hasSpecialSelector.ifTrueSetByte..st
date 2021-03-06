special objects
hasSpecialSelector: aLiteral ifTrueSetByte: aBlock
	"Some basic messages such as #+ have their own bytecode for speed.
	To gain some space, the literal array of compiled methods does not contain such message selectors.
	This implies that the cross referencer and other tools have to check if a selector is of the optimized one 
	or not by calling this method. This is an optimization when machines were slow and small and it 
	may be removed in the future to gain simplicity."
	
	1 to: self specialSelectorSize do:
		[:index | 
		(self specialSelectorAt: index) == aLiteral
			ifTrue: [aBlock value: index + 16rAF. ^true]].
	^false