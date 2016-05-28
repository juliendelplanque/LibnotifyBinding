notification
notificationSet: aNofification timeout: anInteger
	^ self ffiCall: #(void notify_notification_set_timeout ( LBNotification aNofification, gint anInteger))