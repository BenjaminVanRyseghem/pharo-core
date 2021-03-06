initialization
initializeWidgets

	issueNumber := self newTextInput.
	titleWidget := self newTextInput.
	loadingWidget := self instantiate: LoadingThenOk.

	titleWidget
		enabled: false;
		ghostText: 'Title'.
		
	issueNumber ghostText: 'Issue number'.

	issueNumber 
		autoAccept: true;
		acceptBlock: [ :text |
			fork ifNotNil: [ fork terminate ].
			loadingWidget loading.
			self valid: false.
			fork := [ | response |
				response := ZnEasy client
				url: 'http://bugs.pharo.org/issues/name/', text asString;
				get;
				response.
				self setTitleFrom: response ] fork ].
	self focusOrder
		add: issueNumber