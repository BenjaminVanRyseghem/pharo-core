priv pending
doPending
	"execute pending instructions. we hand the IR instruction over so the backend can fill the bytecode offset. (mapBytesTo:)"

	| assoc |
	[pending isEmpty] whileFalse: [
		assoc := pending removeFirst.
		assoc value "message" sendTo: gen.
		gen mapBytesTo: assoc key
	].