notify
notifySetAppName: aString
	^ self ffiCall: #(void notify_set_app_name (String aString))