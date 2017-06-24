converting
asXML
	| vis |
	vis := EssXMLExporter new.
	self acceptVisitor: vis.
	^ vis contents