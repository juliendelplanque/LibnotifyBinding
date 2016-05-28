notify
notifyUninit
	^ self ffiCall: #(void notify_uninit (void))