notify
notifyGetServerInfoName: nameValueHolder vendor: vendorValueHolder version: versionValueHolder specVersion: specVersionValueHolder
	^ self ffiCall: #(gboolean notify_get_server_info (LBStringValueHolder *nameValueHolder,
                                                         LBStringValueHolder *vendorValueHolder,
                                                         LBStringValueHolder *versionValueHolder,
                                                         LBStringValueHolder *specVersionValueHolder))