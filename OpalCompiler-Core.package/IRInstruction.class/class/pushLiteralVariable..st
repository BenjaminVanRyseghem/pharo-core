instance creation
pushLiteralVariable: object

	^ IRLiteralVariableAccess new
		association: object;
		store: false;
		yourself
	 