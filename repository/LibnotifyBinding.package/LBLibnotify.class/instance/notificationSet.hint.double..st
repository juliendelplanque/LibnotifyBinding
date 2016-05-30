as yet unclassified
notificationSet: aNotification hint: aString double: aFloat
	^ self ffiCall: #(void notify_notification_set_hint_double ( LBNotification aNotification, char* aString, double aFloat)) module: 'libnotify.so'