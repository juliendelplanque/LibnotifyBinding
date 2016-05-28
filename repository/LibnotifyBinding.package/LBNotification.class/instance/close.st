actions
close
	^ (self libnotify notificationClose: self error: nil)
			ifFalse: [ LBFFIError signal: 'An error occurs while closing the notification.' ]
			ifTrue: [ self ]