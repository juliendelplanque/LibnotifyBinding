notify
notifyIsInitted
	^ self ffiCall: #(gboolean notify_is_initted (void))