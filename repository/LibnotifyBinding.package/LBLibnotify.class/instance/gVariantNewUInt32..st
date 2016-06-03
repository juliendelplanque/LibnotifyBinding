glib
gVariantNewUInt32: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_uint32 (guint32 anInteger))