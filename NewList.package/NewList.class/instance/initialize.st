initialization
initialize

	renderer := nil asValueHolder.
	super initialize.
	
	lastKeystrokeTime := 0.
	lastKeystrokes := ''.
	
	drawColor := Color white asValueHolder.
	model := nil asValueHolder.
	isInitialized := false asValueHolder.
	isMultipleSelection := false asValueHolder.
	listCache := OrderedCollection new asValueHolder.
	selectedIndex := 0 asValueHolder.
	selectedIndexes := Dictionary new asValueHolder.
	listSize := nil asValueHolder.
	headerHeight := 0 asValueHolder.
	headerTitle := '' asValueHolder.
	clickOnHeader := nil asValueHolder.
	secondSelection := nil asValueHolder.
	displayListCache := OrderedCollection new asValueHolder.
	runningProcesses := Array new asValueHolder.
	deSelectOnReclick := false asValueHolder.
	selectionWithKeys := true asValueHolder.
	selectedItem := nil asValueHolder.
	selectedItems := OrderedCollection new asValueHolder.
	unselectOnChange := false asValueHolder.
	iconCache := Dictionary new asValueHolder.
	iconMaxSize := nil asValueHolder.
	enabled := true asValueHolder.
	allowToSelect := true asValueHolder.