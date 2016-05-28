notification
notificationSet: aNofification category: aString
	^ self ffiCall: #(void notify_notification_set_category ( LBNotification aNofification, String aString))