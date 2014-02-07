A VersionnerProjectPackagesPanel is the panel related to packages defined in a project (a configuration).
It shows packages and provides actions on them.

Instance Variables
	addPackageButton:		ButtonModel 
	editPackageButton:		ButtonModel
	packageChangesButton:		ButtonModel
	packages: 			A collection of MTPackage to display
	packagesList:		IconListModel 
	packagesLabel:		LabelModel
	project: 	MTProject
	savePackageButton:		ButtonModel

addPackageButton
	- Add a new package

editPackageButton
	- Edit an existing package

packageChangesButton
	- Get changes on a package

packages
	- the list of packages that belongs to a specfied project (configuration)

packagesLabel
	- The top label of this pane

project
 	- The project owning packages.
	
removePackageButton
	- remove a declared package.

savePackageButton
	- Commit changes and update package version
