initialize-release
initializeNormal: actions
	actions at: 1 put: [ handler startOfHeading ].
	actions at: 2 put: [ handler startOfText ].
	actions at: 3 put: [ handler endOfText ].
	actions at: 4 put: [ handler endOfTransmission ].
	actions at: 5 put: [ handler enquiry ].
	actions at: 6 put: [ handler acknowledge ].
	actions at: 7 put: [ handler bell ].
	actions at: 8 put: [ handler backspace ].
	actions at: 9 put: [ handler tab ].
	actions at: 10 put: [ handler lf ].
	actions at: 11 put: [ handler verticalTab ].
	actions at: 12 put: [ handler formfeed ].
	actions at: 13 put: [ handler carriageReturn ].
	actions at: 14 put: [ handler shiftOut ].
	actions at: 15 put: [ handler shiftIn ].
	actions at: 27 put: [ self readC1 ].
	actions at: 127 put: [ handler backspace ].