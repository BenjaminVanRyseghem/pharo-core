*Polymorph-EventEnhancements
when: anEventSelector
send: aMessageSelector
to: anObject
exclusive: aValueHolder
 
	self
		when: anEventSelector
		evaluate: ((ExclusiveWeakMessageSend
					receiver: anObject
					selector: aMessageSelector)
						basicExecuting: aValueHolder)