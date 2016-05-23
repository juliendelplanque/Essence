instance creation
fromXMLDocument: anXMLDocument
	^ self new
		cars: ((anXMLDocument elementAt: 'essence')
					elementsCollect: [ :element | Car fromXMLElement: element ]) asOrderedCollection;
		yourself