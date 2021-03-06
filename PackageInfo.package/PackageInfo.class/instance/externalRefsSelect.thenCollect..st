dependencies
externalRefsSelect: selBlock thenCollect: colBlock
	| pkgMethods dependents extMethods otherClasses otherMethods classNames |

	classNames := self classes collect: [:c | c name].
	extMethods := self extensionMethods collect: [:mr | mr selector].
	otherClasses := self externalClasses difference: self externalSubclasses.
	otherMethods :=  otherClasses gather: [:c | c selectors].
	pkgMethods := self methods asSet collect: [:mr | mr selector].
	pkgMethods removeAllFoundIn: otherMethods.

	dependents := Set new.
	otherClasses do: [:c |
		c selectorsAndMethodsDo:
			[:sel :compiled | | refs |
			(extMethods includes: sel) ifFalse: 
				[refs := compiled literals select: selBlock thenCollect: colBlock.
				refs do: [:ea |
					((classNames includes: ea) or: [pkgMethods includes: ea])
							ifTrue: [dependents add: (self referenceForMethod: sel ofClass: c) -> ea]]]]].
	^ dependents