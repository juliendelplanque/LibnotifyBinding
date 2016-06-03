glib
gVariantNewUInt64: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_uint64 (guint64 anInteger))