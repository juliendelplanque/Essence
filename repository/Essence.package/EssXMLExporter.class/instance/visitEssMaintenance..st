visitor
visitEssMaintenance: anEssMaintenance
	self assert: anEssMaintenance km isNotNil description: 'EssMaintenance>>#km can not be nil at xml exportation.'.
	xmlWriter tag: #maintenance with: [ 
		anEssMaintenance date ifNotNil: [
			xmlWriter tag: #date with: anEssMaintenance date mmddyyyy ].
		anEssMaintenance cost ifNotNil: [
			xmlWriter tag: #cost with: anEssMaintenance cost asString ].
		xmlWriter tag: #km with: anEssMaintenance km value asString.
		xmlWriter tag: #items with: [ 
			anEssMaintenance items do: [ :item |
				xmlWriter tag: #item with: item ] ] ]