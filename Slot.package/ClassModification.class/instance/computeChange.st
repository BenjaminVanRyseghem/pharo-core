private
computeChange
	super computeChange.
	layout computeChangesFrom: target layout in: self.
	slotShift := layout fieldSize - target layout fieldSize.
	self propagate.