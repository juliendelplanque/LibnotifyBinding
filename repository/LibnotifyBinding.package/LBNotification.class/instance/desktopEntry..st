accessing-hints
desktopEntry: aString
	"This specifies the name of the desktop filename representing the calling program. This should be the same as the prefix used for the application's .desktop file. An example would be 'rhythmbox' from 'rhythmbox.desktop'. This can be used by the daemon to retrieve the correct icon for the application, for logging purposes, etc."
	self setHint: 'desktop-entry' integer: aString