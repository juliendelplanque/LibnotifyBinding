as yet unclassified
suppressSound: aBoolean
	"Causes the server to suppress playing any sounds, if it has that ability. This is usually set when the client itself is going to play its own sound."
	self
		setHint: 'suppress-sound'
		integer: (aBoolean ifTrue: [ 1 ] ifFalse: [ 0 ])