*NautilusCommon
confirmRemovalOfSelectors: aCollection on: aClass 
	"Determine if it is okay to remove the given selector. Answer 1 if it  
	should be removed, 2 if it should be removed followed by a senders  
	browse, and 3 if it should not be removed."
	| collection count answer caption allCalls selectors oneCalls |
	collection := aCollection asOrderedCollection.
	oneCalls := OrderedCollection new.
	aCollection do: [:sel | 
		allCalls := self allCallsOn: sel.
		(count := allCalls size) = 0 "no senders -- let the removal happen without warning"
			ifTrue: [ collection remove: sel ].
		count = 1 "only sender is itself"
			ifTrue: [ (allCalls first actualClass == aClass and: [ allCalls first selector == sel ])
						ifTrue: [ 
							oneCalls add: sel.
							collection remove: sel.]]].
				
	"collection removeAll: (self buildSelfContainedCallsFrom: aCollection in: aClass)."
	collection ifEmpty: [ ^ 1 ].
	count := collection inject: 0 into: [:sum :sel | sum + (self allCallsOn: sel) size].
	selectors := collection joinUsing: ', #' last: ' and #'.
	caption := 'The messages #', selectors,' have ' , count printString , ' sender'.
	"ugly but faster"
	caption := (count = 1
					ifTrue: [ 'The messages #', selectors,' have ' , count printString , ' sender' ]
					ifFalse: [ 'The messages #', selectors,' have ' , count printString , ' senders' ]).
	answer := UIManager default 
		chooseFrom: #('Remove them'
				'Remove, then browse senders (if still existing)'
				'Don''t remove, but show me those senders'
				'Forget it -- do nothing -- sorry I asked') title: caption.
	answer = 3
		ifTrue: [
			collection do: [:aSelector | self browseAllSendersOf: aSelector ]].
	answer = 0
		ifTrue: [answer := 3].
	"If user didn't answer, treat it as cancel"
	^ answer min: 3