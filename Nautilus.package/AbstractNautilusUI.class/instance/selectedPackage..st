accessing
selectedPackage: aPackage
" Force package selection, not used by the lists "

	self okToChange
		ifTrue: [
			acceptor := ClassDefinitionAcceptor model: self.
			
			packagesSelection removeAll.
			packagesSelection at: aPackage put: true.
				
			aPackage ifNotNil: [ self giveFocusTo: list ].	
				
			self selectedPackageWithoutChangingSelection: aPackage]