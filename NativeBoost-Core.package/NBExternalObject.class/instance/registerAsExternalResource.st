external resource management
registerAsExternalResource
	"Note, subclasses should implement #resourceData
	and #finalizeResourceData: on class side"
	NBExternalResourceManager addResource: self.
	