notification
notificationNewSummary: aSummaryString message: aMessageString icon: anIconString attach: aGtkWidgetHandle
	^ self ffiCall: #(LBNotification notify_notification_new (String aSummaryString, String aMessageString, String anIconString, void* aGtkWidgetHandle))