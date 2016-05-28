actions
show
	^ (self libnotify notificationShow: self error: nil)
			ifFalse: [ LBFFIError signal: 'An error occurs while showing the notification.' ]
			ifTrue: [ self ]