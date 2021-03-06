constants
gdiConstants

" pixel types "
PFD_TYPE_RGBA  := 0.
PFD_TYPE_COLORINDEX  := 1.

" layer types "
PFD_MAIN_PLANE := 0.
PFD_OVERLAY_PLANE := 1.
PFD_UNDERLAY_PLANE := -1.

" PIXELFORMATDESCRIPTOR flags "
PFD_DOUBLEBUFFER := 16r00000001.
PFD_STEREO := 16r00000002.
PFD_DRAW_TO_WINDOW := 16r00000004.
PFD_DRAW_TO_BITMAP := 16r00000008.
PFD_SUPPORT_GDI := 16r00000010.
PFD_SUPPORT_OPENGL := 16r00000020.
PFD_GENERIC_FORMAT := 16r00000040.
PFD_NEED_PALETTE := 16r00000080.
PFD_NEED_SYSTEM_PALETTE := 16r00000100.
PFD_SWAP_EXCHANGE := 16r00000200.
PFD_SWAP_COPY := 16r00000400.
PFD_SWAP_LAYER_BUFFERS := 16r00000800.
PFD_GENERIC_ACCELERATED := 16r00001000.
PFD_SUPPORT_DIRECTDRAW := 16r00002000.

" PIXELFORMATDESCRIPTOR flags for use in ChoosePixelFormat only "
PFD_DEPTH_DONTCARE := 16r20000000.
PFD_DOUBLEBUFFER_DONTCARE := 16r40000000.
PFD_STEREO_DONTCARE := 16r80000000.
