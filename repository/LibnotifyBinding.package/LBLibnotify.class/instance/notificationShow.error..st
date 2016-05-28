notification
notificationShow: aNofification error: anError
	^ self ffiCall: #(gboolean notify_notification_show ( LBNotification aNofification, void* anError))