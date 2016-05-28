accessing-category
category: aString
	"
Notifications can optionally have a type indicator. Although neither client or nor server must support this, some may choose to. Those servers implementing categories may use them to intelligently display the notification in a certain way, or group notifications of similar types.

Categories are in class.specific form. class specifies the generic type of notification, and specific specifies the more specific type of notification.

If a specific type of notification does not exist for your notification, but the generic kind does, a notification of type class is acceptable.

Third parties, when defining their own categories, should discuss the possibility of standardizing on the hint with other parties, preferably in a place such as the xdg mailing list at freedesktop.org. If it warrants a standard, it will be added to the table above. If no consensus is reached, the category should be in the form of 'x-vendor.class.name.'
	
	http://www.galago-project.org/specs/notification/0.9/x211.html"
	self libnotify notificationSet: self category: aString