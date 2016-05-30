as yet unclassified
notificationSet: aNofification hint: aString bytearray: aByteArray size: anInteger
	^ self ffiCall: #(void notify_notification_set_hint_byte_array ( LBNotification aNofification, char* aString, char* aByteArray, long anInteger)) module: 'libnotify.so'