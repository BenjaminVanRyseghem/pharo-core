*Polymorph-EventEnhancements
when: anEventSelector
sendOnce: aMessageSelector
to: anObject
with: anArg
 
    self
        when: anEventSelector
        evaluate: (NonReentrantWeakMessageSend
            receiver: anObject
            selector: aMessageSelector
		arguments: (Array with: anArg))