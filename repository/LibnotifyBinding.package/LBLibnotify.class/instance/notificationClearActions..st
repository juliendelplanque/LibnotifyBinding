as yet unclassified
notificationClearActions: aNofification
	^ self ffiCall: #(void notify_notification_clear_actions ( LBNotification aNofification))