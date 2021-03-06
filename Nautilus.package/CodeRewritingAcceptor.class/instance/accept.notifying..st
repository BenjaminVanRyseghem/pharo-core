protocol
accept: aText notifying: aController
	| environment tree rule result |

	self model sourceTextArea update: #clearUserEdits.
	
	environment := self model browsedEnvironment.
	tree := self class compiler evaluate: aText.
	
	rule := CodeRewritingRule new
		rewriteRule: tree;
		yourself.
	
	result := RBSmalllintChecker runRule: rule onEnvironment: environment.
	(ChangesBrowser changes: result builder changes) openWithSpec 