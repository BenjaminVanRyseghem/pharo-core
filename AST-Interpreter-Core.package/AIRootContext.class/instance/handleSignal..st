exception-handling
handleSignal: exception

	<reflective: #rootContextHandleSignal:message:>
	^ exception resumeUnchecked: exception defaultAction