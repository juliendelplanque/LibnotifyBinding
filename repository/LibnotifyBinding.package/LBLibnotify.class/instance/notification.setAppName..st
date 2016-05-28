notification
notification: aLBNotification setAppName: appName
	^ self ffiCall: #(void notify_notification_set_app_name(LBNotification aLBNotification, String appName))