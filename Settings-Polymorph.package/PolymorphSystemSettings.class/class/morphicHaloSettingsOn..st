settings
morphicHaloSettingsOn: aBuilder 
	(aBuilder group: #halo)
		label: 'Halo' translated;
		parent: #morphic;
		description: 'All halo settings' translated;
		noOrdering;
		with: [
			(aBuilder setting: #cycleHalosBothDirections)
				label: 'Cycle both directions' translated;
				target: Morph;
				description: 'By default, halos only cycle from front-most submorph to parent (shift key down). This setting enables halos to also cycle from top-level morph down through the submorphs (no shift key)' translated.
			(aBuilder setting: #haloEnclosesFullBounds)
				label: 'Encloses fullbounds' translated;
				target: HaloMorph;
				description: 'If true, halos will enclose the full bounds of the target Morph, rather than just the bounds' translated.
			(aBuilder setting: #showBoundsInHalo)
				label: 'Exhibits bounds' translated;
				target: HaloMorph;
				description: 'If true, halos will include a fine rectangle around the bounds of the target morph.' translated
		]