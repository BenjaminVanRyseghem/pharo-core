menus
addExportMenuItems: aMenu hand: aHandMorph
	"Add export items to the menu"

	aMenu ifNotNil:
		[ | aSubMenu |
		aSubMenu := UIManager default newMenuIn: self for: self.
		aSubMenu add: 'BMP file' translated action: #exportAsBMP.
		aSubMenu add: 'GIF file' translated action: #exportAsGIF.
		aSubMenu add: 'JPEG file' translated action: #exportAsJPEG.
		aSubMenu add: 'PNG file' translated action: #exportAsPNG.
		aMenu add: 'export...' translated icon: Smalltalk ui icons smallExportIcon subMenu: aSubMenu.
		aMenu lastItem icon: Smalltalk ui icons smallExportIcon ].
