example
example2
	" it's my personal script provided as example"
	"self example2"
	| items |
	items := OrderedCollection new.
	items add: (StartupAction name: 'Set the Author' code: [ Author fullName: Author fullName printString ]). "replace it by your name"
	
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: items named: 'author.st'.
	items removeAll.
	
	items add: (StartupAction name: 'Debugger option' code: [ Smalltalk tools debugger alwaysOpenFullDebugger: true ]).
	items add: (StartupAction name: 'Dragging Option' code: [ UITheme defaultSettings fastDragging: true ]).
	items add: (StartupAction name: 'Dialog Auto Accept' code: [ TextEditorDialogWindow autoAccept: true ]).
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: items named: 'settings.st'.
	items removeAll.
	
	items add: (StartupAction name: 'Fonts option' code: [ FreeTypeSystemSettings loadFt2Library: true.
FreeTypeFontProvider current updateFromSystem.
StandardFonts defaultFont: (LogicalFont familyName: 'Lucida Grande' pointSize: 10) forceNotBold.
GraphicFontSettings resetAllFontToDefault.
StandardFonts codeFont: (LogicalFont familyName: 'Consolas' pointSize: 10).] runOnce: true).
	
	StartupPreferencesLoader default addAtStartupInPreferenceVersionFolder: items named: 'fonts.st'.
	items removeAll.
	StartupPreferencesLoader default addAtStartupInImageDirectory: items.
	
	StartupPreferencesLoader default loadFromDefaultLocations.