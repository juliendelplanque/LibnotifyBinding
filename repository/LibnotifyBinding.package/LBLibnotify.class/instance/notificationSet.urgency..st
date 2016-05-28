notification
notificationSet: aNofification urgency: anInteger
	^ self ffiCall: #(void notify_notification_set_urgency ( LBNotification aNofification, long anInteger))