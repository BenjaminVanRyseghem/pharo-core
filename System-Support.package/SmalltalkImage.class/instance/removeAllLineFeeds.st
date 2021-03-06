housekeeping
removeAllLineFeeds
	"Smalltalk removeAllLineFeeds"
	"Scan all methods for source code with lineFeeds.
	Replaces all occurrences of <CR><LF> or <LF> by <CR>.
	When done, offers to display an Inspector containing the message
	names grouped by author initials.
	In this dictionary, the key 'OK' contains the methods that had literals that contained <LF> characters."
	| totalStripped totalOK authors |
	'Scanning sources for LineFeeds.
This will take a few minutes...'
		displayProgressFrom: 0
		to: CompiledMethod instanceCount
		during: [:bar | | n | 
			n := 0.
			authors := self
						removeAllLineFeedsQuietlyCalling: [(n := n + 1) \\ 100 = 0
								ifTrue: [bar current: n]]].
	totalStripped := authors
				inject: 1
				into: [:sum :set | sum + set size].
	totalOK := (authors at: 'OK') size.
	totalStripped := totalStripped - totalOK.
	self crTrace: totalStripped printString , ' methods stripped of LFs.'.
	self crTrace: totalOK printString , ' methods still correctly contain LFs.'.
	(self confirm: 'Do you want to see the affected methods?')
		ifTrue: [ authors inspect ]