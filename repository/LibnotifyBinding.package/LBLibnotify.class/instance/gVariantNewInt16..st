glib
gVariantNewInt16: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_int16 (gint16 anInteger))