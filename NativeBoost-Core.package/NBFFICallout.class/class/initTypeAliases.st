initialize-release
initTypeAliases
	"self initTypeAliases"
	TypeAliases := Dictionary newFromPairs:
	#(
"not really a type, useful only as return type or with pointers "
		void NBVoid
		
" 0/!0  <-> false/true "
		bool NBBool

"fixed size integer types, byte order is platform dependent "
		int8 NBInt8
		uint8 NBUInt8
		int16 NBInt16
		uint16 NBUInt16
		int32 NBInt32
		uint32 NBUInt32
		int64 NBInt64
		uint64 NBUInt64

" aliases to common C compiler types.. some of them are platform dependent, some is not.. to be sorted out later "		
		signedByte int8
		unsignedByte int8
		signedShort int16
		unsignedShort uint16
		signedChar int8  
		unsignedChar uint8
		schar int8
		uchar uint8
		signedLong int32
		unsignedLong uint32
		sbyte int8
		byte uint8
		short int16
		ushort uint16
		long int32
		ulong uint32
		longlong int64
		ulonglong uint64
		uint uint32
		int int32

"unsigned for sizes.. usually same size as platform's word size"
		size_t NBSizeT
		
"character type. uint8 <-> accepts Character/Smallint as argument, converts return to Character "
		Character NBCharacterType
		char NBCharacterType
		

"Floats fixed-size. platform-dependent byte order"
		float16 NBFloat16
		float32 NBFloat32
		float64 NBFloat64
		float128 NBFloat128

"Floats, C type name aliases"
				
		float float32
		double float64
		shortFloat float16
		
"Special types "		
		oop NBOop
	)
	