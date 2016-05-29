initialization
initialize
	super initialize.
	self initializeTypeMap.
	SessionManager default
		registerUserClassNamed: self name.
	self ensureLibnotifyIsInitialized