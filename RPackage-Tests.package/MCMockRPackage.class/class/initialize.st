initialize-release
initialize
	[self packageOrganizerClass default registerPackage: self new ] on: MessageNotUnderstood do: []