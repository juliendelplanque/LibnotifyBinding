notification
notificationClose: aNofification error: anError
	^ self ffiCall: #(gboolean notify_notification_close ( LBNotification aNofification, void* anError))