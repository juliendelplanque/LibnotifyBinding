as yet unclassified
notificationSet: aNofification hint: aString int32: anInteger

	^ self ffiCall: #(void notify_notification_set_hint_int32 ( LBNotification aNofification, char* aString, long anInteger )) module: 'libnotify.so'