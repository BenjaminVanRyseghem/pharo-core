debugging
gccDisassemble: bytes
	
	'disas.sh' asFileReference delete writeStreamDo: [:s|
		s 
			nextPutAll: '#!/bin/bash'; lf;
			nextPutAll: 'gcc -g -O0 ';
			nextPutAll: (self is32 ifTrue: ['-m32'] ifFalse: [ '-m64' ]);
			nextPutAll: ' disas.test.c >> /dev/null 2>&1'; lf;
			nextPutAll: 'gdb -q -x gdb.commands  a.out | grep "^0x" > disas.output'; lf].

	'gdb.commands' asFileReference delete writeStreamDo: [:s|
		s 
			nextPutAll: 'b 4'; lf;
 			nextPutAll: 'r'; lf;
			nextPutAll: 'x /'; print: bytes size; nextPutAll: 'xb &instructions'; lf;
			nextPutAll: 'x /'; print: bytes size; nextPutAll: 'ub &instructions'; lf;
 			nextPutAll: 'disas &instructions &instructions+1'; lf;
 			nextPutAll: 'q'].

	'disas.test.c' asFileReference delete writeStreamDo: [ :f|
		{
			'#include <stdio.h>'.
			'void main() {'	.
			'const char instructions[]= {'.	
			String streamContents: [:s|
				bytes 	
					do: [:b | s print: b]
					separatedBy: [ s << ', ']].
			'};'.
			'printf("%d", instructions);'.
			'}'
		}
		do: [:x | f nextPutAll: x value asString; lf ]].
	
	Smalltalk 
		at: #OSProcess 
		ifPresent: [ :cls|
			cls waitForCommand: 'cd "', Smalltalk imagePath, '"; chmod a+x ./disas.sh; sh ./disas.sh'.
			^ 'disas.output' asFileReference readStream contents asString].
	
	self inform: 'OSProcess has to be installed to run gccDisassemble'.