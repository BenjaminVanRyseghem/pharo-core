private
updateOnClassSelection
	self changed: #toggleButtonEnabled.
	self setWindowTitle.
	self resetCategoriesListSelection.
	self resetMethodsListSelection.
	self update.
	self changed: #isAClassSelected.
	self changed: #getComments.
	self changed: #instanceButtonLabel.
	self changed: #sourceCodeFrom: