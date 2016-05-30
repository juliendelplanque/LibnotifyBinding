actions
updateSummary: aSummaryString message: aMessageString icon: aStringOrAFilePath
	^ (self libnotify
		notificationUpdate: self summary: aSummaryString message: aMessageString icon: aStringOrAFilePath)
			ifFalse: [ LBFFIError signal: 'An error occurs while updating the notification.' ]
			ifTrue: [ self ]