To do a specific inspector subclass this and override 	EyeInspector>>addSpecialFields
Then on your object override
	Object>>eyeClass
so it returns your new inspector