notify
notifyInit: aString
	^ self ffiCall: #(gboolean notify_init ( String aString))