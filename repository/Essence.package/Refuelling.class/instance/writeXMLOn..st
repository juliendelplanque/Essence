xml
writeXMLOn: anXMLWriter
	anXMLWriter tag: #refuelling with: [ 
		anXMLWriter
			tag: #date with: self date mmddyyyy;
			tag: #volume with: self volume asString;
			tag: #cost with: self cost asString.
		self km ifNotNil: [ 
			anXMLWriter tag: #km with: self km asString ] ]