accessing
rationale
	^ 'Checks that methods that should always contain a super message send, actually contain a super message send. For example, the postCopy method should always contain a "super postCopy". The list of methods that should contain super message sends is in #superMessages.'