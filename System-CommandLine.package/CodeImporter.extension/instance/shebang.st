*System-CommandLine
shebang
	readStream position: 0.
	(readStream next: 2) = '#!'
		ifFalse: [ 
			readStream position: 0.
			^ self ].
	"here we found the shebang, so skip the first line"
	^ readStream nextLine.
	