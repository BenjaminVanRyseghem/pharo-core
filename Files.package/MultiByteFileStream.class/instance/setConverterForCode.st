private
setConverterForCode

	| current |
	(SourceFiles at: 2)
		ifNotNil: [self fullName = (SourceFiles at: 2) fullName ifTrue: [^ self]].
	current := self converter saveStateOf: self.
	self position: 0.
	self binary.
	((self next: 3) = #[ 16rEF 16rBB 16rBF ]) ifTrue: [
		self converter: UTF8TextConverter new
	] ifFalse: [
		self converter: MacRomanTextConverter new.
	].
	converter restoreStateOf: self with: current.
	self text.
