drawing - private
topDifference
	| ownerTop top |
	
	ownerTop := self listSource top.
	top := (self bounds: self fullBounds in: self listSource) top.
	
	^ ownerTop - top +1