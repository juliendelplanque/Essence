xml
writeXMLOn: anXMLWriter
	anXMLWriter
		tag: 'essence' with: [.
			self cars do: [ :car | car writeXMLOn: anXMLWriter ] ]