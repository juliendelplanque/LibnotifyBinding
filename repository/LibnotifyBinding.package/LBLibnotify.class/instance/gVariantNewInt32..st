glib
gVariantNewInt32: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_int32 (gint32 anInteger))