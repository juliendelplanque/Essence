visitor
visitEssCar: anEssCar
	xmlWriter tag: #car with: [ 
		xmlWriter
			tag: #name with: anEssCar carName;
			tag: #year with: anEssCar year asString;
			tag: #refuellings with: [ 
				anEssCar refuellings do: [ :refulling |
					refulling acceptVisitor: self ] ] ]