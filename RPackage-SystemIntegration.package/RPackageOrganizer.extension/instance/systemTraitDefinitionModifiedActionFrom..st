*RPackage-SystemIntegration
systemTraitDefinitionModifiedActionFrom: ann
	"this kind of anounecement will be used when:
		=> we create a new trait.
		=> we declare new traits to use in a trait"
	|trait|
	trait := ann itemTrait.
	