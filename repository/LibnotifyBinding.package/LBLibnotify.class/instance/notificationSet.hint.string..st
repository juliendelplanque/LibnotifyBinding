as yet unclassified
notificationSet: aNofification hint: aHintString string: aValueString
	^ self ffiCall: #(void notify_notification_set_hint_string ( LBNotification aNofification, String aHintString, String aValueString)) module: 'libnotify.so'