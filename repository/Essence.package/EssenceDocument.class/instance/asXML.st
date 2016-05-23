xml
asXML
	| writer |
	writer := XMLWriter new.
	writer
		enablePrettyPrinting;
		lineBreak: Smalltalk os lineEnding;
		xml.
	self writeXMLOn: writer.
	^ writer contents