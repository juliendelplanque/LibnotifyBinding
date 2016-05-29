system startup
shutDown: isQuitting
	isQuitting ifTrue: [ self uniqueInstance notifyUninit ].
	super shutDown: isQuitting