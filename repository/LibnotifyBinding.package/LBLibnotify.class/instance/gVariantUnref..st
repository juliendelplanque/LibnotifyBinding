glib
gVariantUnref: aLBGVariant
	^ self ffiCall: #(void g_variant_unref (LBGVariant aLBGVariant))