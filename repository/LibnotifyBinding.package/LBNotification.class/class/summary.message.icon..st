instance creation
summary: aSummaryString message: aMessageString icon: aByteArray
	
	^ LBLibnotify uniqueInstance
		notificationNewSummary: aSummaryString
		message: aMessageString
		icon: aByteArray
		attach: nil