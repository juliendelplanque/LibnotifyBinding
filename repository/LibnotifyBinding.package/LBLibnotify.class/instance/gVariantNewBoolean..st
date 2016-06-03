glib
gVariantNewBoolean: aBoolean
	^ self ffiCall: #(LBGVariant g_variant_new_boolean (gboolean aBoolean))