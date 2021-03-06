not finished yet
convertUnicode: anAsm conversionLabels: convLabels
"
input:
- EAX  32-bit unicode value to convert
.
output:
- EAX - utf-8 encoded character (in little-endian byte order) max 4 bytes
- EDX - number of encoded bytes
"
	|  moreThanTwo moreThanThree |
	
	moreThanTwo := anAsm uniqueLabelName: 'moreThanTwo'.
	moreThanThree := anAsm uniqueLabelName: 'moreThanThree'.
	
	anAsm
		cmp:  anAsm EAX with: 16r7F;
		jle: (convLabels at: 1); "one byte"

		cmp: anAsm EAX with: 16r7FF;
	 	jg: moreThanTwo;
"two bytes 80 .. 7FF"
" 	AH 			AL 	      "
"00000aaa aabbbbbb"
	
"110aaaaa 10bbbbbb
	AL                      AH   (little endian order)
"
		shr: anAsm EAX with: 2;
		shl: anAsm AL with: 2;
		or: anAsm AX with: 2r1100000010000000;
		xchg: anAsm AL with: anAsm AH;
		jmp: (convLabels at: 2);
	label: moreThanTwo;
		cmp: anAsm EAX with: 16rFFFF;
	 	jg: moreThanThree;
"three bytes 800 ... FFFF"	
" 	AH 			AL 	      "
"aaaabbbb bbcccccc"
" => 1110aaaa 10bbbbbb 10cccccc"
		shl: anAsm EAX with: 4;
		shr: anAsm AX with: 2;
		shr: anAsm AL with: 2;
	" EAX = ...aaaa xxbbbbbb xxcccccc "
		or: anAsm EAX with: 2r111000001000000010000000;  "16rE08080"	
		shl: anAsm EAX with: 8;
		bswap: anAsm EAX;
		jmp: (convLabels at: 3);
"four bytes 1000 ... 10FFFF"	
" 	AH 			AL 	      "
"000aaabb bbbbcccc ccdddddd"
"=> 11110aaa 10bbbbbb 10cccccc 10dddddd"		
		mov: anAsm EAX to: anAsm EDX;
		shl: anAsm EAX with: 4;
		shr: anAsm AX with: 2;
		shr: anAsm AL with: 2;
	" EAX = 0000000a aabbbbbb xxcccccc xxdddddd "
		and: anAsm EAX with: 16r3F3F3F;
		or: anAsm EAX with: 16r808080;
		bswap: anAsm EAX;
		shr: anAsm EDX with: 18; "6*3"
		or: anAsm DL with: 16r11110000;
		mov: anAsm DL to: anAsm AL;
		jmp: (convLabels at: 4)