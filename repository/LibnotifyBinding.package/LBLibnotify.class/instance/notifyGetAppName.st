notify
notifyGetAppName
	^ self ffiCall: #(String notify_get_app_name (void))