initialization
initialize
	" self initialize "
	BOOL := #bool.
	DWORD := #ulong.
	HWND := #NBWin32Window.
	POINT := #NBWin32Point.
	RECT := #NBWin32Rectangle.
	HDC := #NBWin32Hdc.
	HMENU := #HANDLE.
	UINT := #ulong.
	
	ATOM := #WORD.
	BOOLEAN := #BYTE.
	BYTE := #unsignedByte.
	CALLBACK := #'void*'.
	CHAR := #char.
	COLORREF := #DWORD.
	DWORDLONG := #ULONGLONG.

	DWORD32 := #ulong.
	DWORD64 := #ulonglong.
	FLOAT := #float.

	HRESULT := #LONG.
	INT := #long.
	INT32 := #long.
	INT64 := #longlong.
	LANGID := #WORD.
	LCID := #DWORD.
	LCTYPE := #DWORD.
	LGRPID := #DWORD.
	LONG := #long.
	LONGLONG := #longlong.

	LONG32 := #long.
	LONG64 := #longlong.
	LPARAM := #'LONG_PTR'.
	LPBOOL := #'BOOL*'.
	LPBYTE := #'BYTE*'.
	LPCOLORREF := #'DWORD*'.
	LPCVOID := #'void*'.
	LPDWORD := #'DWORD*'.
	
	WNDPROC := #'void*'.
	HANDLE := #NBWin32Handle.
	HINSTANCE :=  HMODULE := HCURSOR := HBRUSH := 
	HACCEL :=  HCOLORSPACE :=  HCONV := HICON := HCONVLIST := HDDEDATA := 
	HDESK := HDROP := HDWP := HENHMETAFILE := HFILE := HFONT := HGDIOBJ  := 
	HGLOBAL  := HHOOK  := HKEY  := HKL  := HLOCAL  := HMETAFILE  := HMODULE :=
	HMONITOR  := HPALETTE  := HPEN  := HRGN  := HRSRC  := HSZ  := HWINSTA := #HANDLE.

	self initialize2.
	self initialize3.
	self stringTypes.
	self objTypes.
	