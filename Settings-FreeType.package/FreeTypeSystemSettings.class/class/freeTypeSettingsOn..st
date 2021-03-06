settings
freeTypeSettingsOn: aBuilder 
	<systemsettings>
	(aBuilder setting: #noFt2Library)
		target: self;
		icon: Smalltalk ui icons smallConfigurationIcon;
		type: #Label;
		label: 'Free type' translated;
		precondition: [FT2Library current isNil];
		parent: #appearance;
		order: 3;  
		description: 'Free type fonts are not available probably because the FT2 plugin is not installed. Check your VM installation' translated.
	(aBuilder setting: #loadFt2Library)
		target: self;
		dialog: [self ft2LibraryVersion];
		icon: Smalltalk ui icons smallConfigurationIcon;
		label: 'Use Free type' translated;
		description: 'If checked then allows free type fonts using and update available fonts by scanning the current system' translated;
		precondition: [FT2Library current notNil];
		parent: #appearance; 
		order: 3;  
		with: [
			(aBuilder pickOne: #monitorType) label: 'Monitor type' translated;
				 description: 'LCD is generally better for laptops, CRT for others' translated;
				 target: FreeTypeSettings;
				 targetSelector: #current;
				 order: 0;
				 default: #LCD;
				 domainValues: {#LCD. #CRT}.
			(aBuilder setting: #updateFontsAtImageStartup)
				order: 1;
				target: FreeTypeSettings;
				label: 'Update fonts at startup' translated;
				description: 'If true, then the available font list is recomputed at each startup' translated.
			(aBuilder group: #advancedSettings) 
				order: 10;
				label: 'Advanced features' translated;
				description: 'Some very specific parameters as the hinting or the cache size' translated;
				with: [
					(aBuilder range: #cacheSize) 
						target: FreeTypeCache; 
						 targetSelector: #current;
						 label: 'Cache size' translated;
						 description: 'The size of the cache in KBytes' translated;
						 default: 5000;
						range: (0 to: 50000 by: 10).
					(aBuilder pickOne: #hintingSymbol) label: 'Hinting' translated;
						 description: 'Changes the glyph shapes:' translated , '
o FULL: glyph shapes features are snapped to pixel boundaries. Glyphs are monochrome, with no anti-aliasing. This option changes the shapes the most.' translated , '
o LIGHT: glyph shapes features are partially snapped to pixel boundaries. This option changes the shapes less than with Full, resulting in better shapes, but less contrast.' translated , '
o NORMAL: glyph shapes features are snapped to pixel boundaries. Glyphs are anti-aliased.' translated , '
o NONE: use the original glyph shapes without snapping their features to pixel boundaries. This gives the best shapes, but with less contrast and more fuzziness.' translated;
						 target: FreeTypeSettings;
						 targetSelector: #current;
						 default: #Light;
						 domainValues: {
							'Light' translated->#Light. 
							'Normal' translated ->#Normal. 
							'Full' translated -> #Full. 
							'None' translated -> #None}.
					(aBuilder range: #glyphContrast) target: FreeTypeSettings;
						 targetSelector: #current;
						 label: 'Glyph contrast' translated;
						 description: 'Change the contrast level for glyphs. This is an integer between 1 and 100' translated;
						 default: 50;
						range: (0 to: 100 by: 10)]]