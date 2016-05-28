notification
notificationUpdate: aNotification summary: aSummaryString message: aMessageString icon: iconNameOrFilePath
	"Updates the notification text and icon. This won't send the update out and display it on the screen. For that, you will need to call notify_notification_show().
	
	aNotification : The notification to update.
	aSummaryString : The new required summary text.
	aMessageString : The optional body text (can be nil).
	iconNameOrFilePath : The optional icon theme icon name or filename (can be nil).
	Returns : true, unless an invalid parameter was passed."
	
	
	^ self ffiCall: #(gboolean notify_notification_update (LBNotification aNotification, String aSummaryString, String aMessageString, String iconNameOrFilePath))