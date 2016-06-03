glib
gVariantNewUInt16: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_uint16 (guint16 anInteger))