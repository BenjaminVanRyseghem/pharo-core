*RecentSubmissions-UI
open
	"opens the system window for recent messages"

	| browser |
	browser := MessageListBrowser on: self.
	browser open.