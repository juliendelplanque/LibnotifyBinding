server info
serverInfo
	^ LBServerInfo uniqueInstance
			refresh;
			yourself