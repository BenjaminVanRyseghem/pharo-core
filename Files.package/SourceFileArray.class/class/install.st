initialize-release
install
	"Replace SourceFiles by an instance of me with the standard sources and changes files.
	This only works if SourceFiles is either an Array or an instance of this class"

	"SourceFileArray install"

	^ SourceFiles := self new