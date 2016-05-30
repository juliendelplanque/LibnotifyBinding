as yet unclassified
notificationAdd: aLBNotification action: actionName label: aLabel callBack: aCallback userData: userData freeFunction: freeFunc
	^ self ffiCall: #(void notify_notification_add_action (LBNotification aLBNotification,
                                                         String actionName,
                                                         String aLabel,
                                                         FFICallback aCallback,
                                                         void* userData,
                                                         void* freeFunc))