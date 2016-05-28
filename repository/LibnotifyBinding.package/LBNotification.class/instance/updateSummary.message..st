actions
updateSummary: aSummaryString message: aMessageString
	^ LBLibnotify uniqueInstance notificationUpdate: self summary: aSummaryString message: aMessageString icon: nil