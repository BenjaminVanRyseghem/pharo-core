running
cleanUpTrait: trait
	"During development some tests might invalidate the trait internal state.
	To avoid follow-up failures we reset the trait state here as good as possible."
	
	trait users removeAll.
	trait classTrait users removeAll.