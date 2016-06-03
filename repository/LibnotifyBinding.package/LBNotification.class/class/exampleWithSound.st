example
exampleWithSound
	(LBNotification
		summary: 'libnotify for Pharo rocks'
		message: 'libnotify for Pharo can also play sounds!'
		icon: 'audio-volume-high')
			setHint: 'sound-name' to: 'bell-terminal';
			beLow;
			show