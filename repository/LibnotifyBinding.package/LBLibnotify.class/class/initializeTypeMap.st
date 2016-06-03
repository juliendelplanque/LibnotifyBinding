initialization
initializeTypeMap

	TypeMap := Dictionary newFromPairs: #(
		gboolean Boolean
		gint int
		gint16 int
		gint32 int
		gint64 int
		guint16 int
		guint32 int
		guint64 int
		gdouble double
		guchar char
	)