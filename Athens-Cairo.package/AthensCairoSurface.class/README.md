i am a concrete implementation of Athens surface which using cairo graphics library for rendering.

Cairo library, by itself can have multiple surface types.
This class uses image surface (a bitmap located in system memory) and maps to cairo_image_surface_t* C type.