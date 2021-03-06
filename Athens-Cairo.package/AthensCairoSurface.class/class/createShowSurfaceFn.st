surface plugin callbacks
createShowSurfaceFn

	"
	int showSurface(int handle, int x, int y, int w, int h);
		Display the contents of the surface on the actual screen.

		If ioShowSurface() is called the surface in question represents
		a Squeak DisplayScreen.

	"

	| fn |

	fn := NBNativeFunctionGen 
		cdecl: #(int (int handle, int x, int y, int w, int h))
		emit: [:gen :proxy :asm | 
			"do nothing"
			asm mov: 1 to: asm EAX
		].
	
	fn install.
	^ fn address