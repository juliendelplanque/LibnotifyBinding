glib
gVariantNewDouble: aFloat
	^ self ffiCall: #(LBGVariant g_variant_new_double (gdouble aFloat))