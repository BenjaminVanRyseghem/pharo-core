random seed
makeSeedFromSound
 
	| answer |
	"This logic only works when the sound package is loaded and 
	in the future we should propose a simple random generator to be 
	for the DummySoundSystem."
 	[answer := SoundSystem current randomBitsFromSoundInput: 32
 	] ifError: [answer := nil].
 	^answer