as yet unclassified
notificationClearHints: aNofification
	^ self ffiCall: #(void notify_notification_clear_hints ( LBNotification aNofification))