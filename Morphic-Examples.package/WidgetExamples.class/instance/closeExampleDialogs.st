cleanup
closeExampleDialogs
	"Close the example dialogs."
	"self closeExampleDialogs"
	
	DialogWindow allSubInstances do: [:d | d cancel]