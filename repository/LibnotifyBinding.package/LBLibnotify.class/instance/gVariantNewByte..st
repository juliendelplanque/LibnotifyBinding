glib
gVariantNewByte: anInteger
	^ self ffiCall: #(LBGVariant g_variant_new_byte (guchar anInteger))