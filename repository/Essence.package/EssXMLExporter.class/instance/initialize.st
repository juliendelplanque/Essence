initialization
initialize
	super initialize.
	xmlWriter := XMLWriter new
						enablePrettyPrinting;
						lineBreak: Smalltalk os lineEnding;
						xml;
						yourself.
	