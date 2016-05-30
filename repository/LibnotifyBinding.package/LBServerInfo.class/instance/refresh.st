refreshing
refresh
	| nameHolder vendorHolder versionHolder specVersionHolder |
	nameHolder := LBStringValueHolder new.
	vendorHolder := LBStringValueHolder new.
	versionHolder := LBStringValueHolder new.
	specVersionHolder := LBStringValueHolder new.
	self libnotify
		notifyGetServerInfoName: nameHolder
		vendor: vendorHolder
		version: versionHolder
		specVersion: specVersionHolder.
	serverName := nameHolder value.
	vendorName := vendorHolder value.
	version := versionHolder value.
	specificationVersion := specVersionHolder value.