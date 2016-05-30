as yet unclassified
notificationSet: aNofification hint: aString byte: anInteger
	^ self ffiCall: #(void notify_notification_set_hint_byte ( LBNotification aNofification, char* aString, char anInteger )) module: 'libnotify.so'