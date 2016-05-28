actions
updateSummary: aSummaryString message: aMessageString
	^ (self updateSummary: aSummaryString message: aMessageString icon: nil)
			ifFalse: [ LBFFIError signal: 'An error occurs while updating the notification.' ]
			ifTrue: [ self ]