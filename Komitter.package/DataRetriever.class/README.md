I am a simple object used when a UI blocking query is needed but: 

	- you do not want to block the UI thread
	- you want to cache the result
	- you want to block the access to the data until the end of the query.
	
Even if Imay be reused to retrieve multiple times data, it is safer to dispose me and use a new sibling of me.

In case I am released before Ican fetch the data, a `nullObject` will be returned.