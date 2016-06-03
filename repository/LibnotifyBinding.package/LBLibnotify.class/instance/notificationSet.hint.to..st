notification
notificationSet: aLBNotification hint: aString to: aLBGVariant
	^ self ffiCall: #(void notify_notification_set_hint (LBNotification aLBNotification,
                                                        String aString,
                                                        LBGVariant aLBGVariant))