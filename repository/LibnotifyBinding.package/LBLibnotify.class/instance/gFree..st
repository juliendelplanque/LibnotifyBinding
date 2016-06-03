glib
gFree: aLBNotification
	^ self ffiCall: #(void g_free ( LBNotification aLBNotification))