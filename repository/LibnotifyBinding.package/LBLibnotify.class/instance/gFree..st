glib
gFree: anExternalStructure
	^ self ffiCall: #(void g_free ( LBNotification anExternalStructure)) module: 'libglib-2.0.so'