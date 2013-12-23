private
timeBetweenUnlocks

	^ timeBetweenUnlocks ifNil: [ self defaultTimeBetweenUnlocks ]