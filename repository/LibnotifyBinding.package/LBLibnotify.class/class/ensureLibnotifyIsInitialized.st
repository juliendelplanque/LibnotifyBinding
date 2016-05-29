initialization
ensureLibnotifyIsInitialized
	self uniqueInstance notifyIsInitted
		ifFalse: [ self uniqueInstance notifyInit: 'Pharo' ]