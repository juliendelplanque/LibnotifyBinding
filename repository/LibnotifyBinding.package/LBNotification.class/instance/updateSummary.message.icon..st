actions
updateSummary: aSummaryString message: aMessageString icon: aStringOrAFilePath
	^ self libnotify
		notificationUpdate: self summary: aSummaryString message: aMessageString icon: aStringOrAFilePath