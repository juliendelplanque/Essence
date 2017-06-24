visitor
visitEssDocument: anEssDocument
	xmlWriter
		tag: 'essence' with: [.
			anEssDocument cars do: [ :car | car acceptVisitor: self ] ]