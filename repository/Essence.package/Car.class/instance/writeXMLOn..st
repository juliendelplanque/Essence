xml
writeXMLOn: anXMLWriter
	anXMLWriter tag: #car with: [ 
		anXMLWriter
			tag: #name with: self carName;
			tag: #year with: self year asString;
			tag: #refuellings with: [ 
				self refuellings do: [ :refulling |
					refulling writeXMLOn: anXMLWriter ] ] ]