instance creation
asNBExternalType: gen

	self error: 'use NBExternalObject instead'.
	
	"Note, do not subclass from me directly. If you want to represent any opaque C structure (stucture, pointer to structure etc),
	subclass from NBExternalObject instead. Otherwise, if you insist, override this method in own subclass to provide own marshalling 
	for instances of your object(s)"