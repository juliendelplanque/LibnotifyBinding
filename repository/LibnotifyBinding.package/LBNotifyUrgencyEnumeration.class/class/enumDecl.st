enum declaration
enumDecl
	^ { 
	#NOTIFY_URGENCY_LOW -> 0.
	#NOTIFY_URGENCY_NORMAL -> 1.
   #NOTIFY_URGENCY_CRITICAL -> 2
	 } asDictionary