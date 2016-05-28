actions
updateSummary: aSummaryString message: aMessageString icon: aStringOrAFilePath
	^ LBLibnotify uniqueInstance notificationUpdate: self summary: aSummaryString message: aMessageString icon: aStringOrAFilePath