triggering
methodAdded: aMethod selector: aSymbol inProtocol: aCategoryName class: aClass requestor: requestor
	"A method with the given selector was added to aClass in protocol aCategoryName."

	self announce: (MethodAdded
				method: aMethod
				selector: aSymbol
				protocol: aCategoryName
				class: aClass
				requestor: requestor)