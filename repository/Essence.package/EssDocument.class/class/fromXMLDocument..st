instance creation
fromXMLDocument: anXMLDocument
	^ self new
		cars: ((anXMLDocument elementAt: 'essence')
					elementsCollect: [ :element | EssCar fromXMLElement: element ]) asOrderedCollection;
		yourself