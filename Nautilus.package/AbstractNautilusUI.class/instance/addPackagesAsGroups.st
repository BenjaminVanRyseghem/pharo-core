group
addPackagesAsGroups

	[ self addPackagesAsGroups: self selectedPackages ]
		on: GroupAlreadyExists 
		do: [:ex | self alertGroupExisting: ex groupName ]