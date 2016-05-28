notification
notificationNewSummary: aSummaryString message: aMessageString icon: iconNameOfFilePath attach: aGtkWidgetHandle
	^ self ffiCall: #(LBNotification notify_notification_new (String aSummaryString, String aMessageString, String iconNameOfFilePath, void* aGtkWidgetHandle))