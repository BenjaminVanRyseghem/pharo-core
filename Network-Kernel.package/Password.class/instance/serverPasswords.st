accessing
serverPasswords
	"Get the server passwords off the disk and decode them. The file 'sqk.info' must be in some folder that Squeak thinks is special (vm folder, or default directory).  (Note: This code works even if you are running with no system sources file.)"

	| sfile |
	(sfile := FileSystem lookInUsualPlaces: 'pass.info') ifNil: [^ nil].
	^ (self decode: sfile contentsOfEntireFile) lines
