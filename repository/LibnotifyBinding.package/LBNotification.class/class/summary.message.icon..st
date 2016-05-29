instance creation
summary: aSummaryString message: aMessageString icon: anIconNameOrFilePath
	"Icon names can be found at: https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html"
	^ LBLibnotify uniqueInstance
		notificationNewSummary: aSummaryString
		message: aMessageString
		icon: anIconNameOrFilePath asLibnotifyString
		attach: nil