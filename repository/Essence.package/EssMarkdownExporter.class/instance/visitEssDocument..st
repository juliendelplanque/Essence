visitor
visitEssDocument: anEssDocument
	anEssDocument cars do: [ :car | 
		car acceptVisitor: self ]