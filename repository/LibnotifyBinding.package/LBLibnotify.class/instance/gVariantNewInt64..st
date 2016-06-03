glib
gVariantNewInt64: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_int64 (gint64 anInteger))