private
isSelectedPackage: aSelection 
	^ aSelection notNil 
		and: [ aSelection asNautilusSelection = self selectedPackage ]