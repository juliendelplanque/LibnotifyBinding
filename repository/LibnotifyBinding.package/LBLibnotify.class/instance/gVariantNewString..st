glib
gVariantNewString: aString
	^ self ffiCall: #(LBGVariant g_variant_new_string (String aString))