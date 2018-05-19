visitor
visitEssMaintenance: anEssMaintenance
	xmlWriter tag: #maintenance with: [ 
		xmlWriter
			tag: #date with: anEssMaintenance date mmddyyyy.
		anEssMaintenance cost ifNotNil: [
			xmlWriter tag: #cost with: anEssMaintenance cost asString ].
		anEssMaintenance km ifNotNil: [
			xmlWriter tag: #km with: anEssMaintenance km value asString ].
		xmlWriter tag: #items with: [ 
			anEssMaintenance items do: [ :item |
				xmlWriter tag: #item with: item ] ] ]