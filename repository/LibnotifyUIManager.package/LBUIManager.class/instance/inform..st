ui requests
inform: aString
	(ProvideAnswerNotification signal: aString) ifNotNil: [:answer | ^true].
	(LBNotification
		summary: 'Pharo - Information'
		message: aString)
			show