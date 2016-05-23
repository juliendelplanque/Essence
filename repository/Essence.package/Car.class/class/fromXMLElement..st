instance creation
fromXMLElement: anXMLElement
	^ self new
		carName: (anXMLElement contentStringAt: 'name');
		year: (anXMLElement contentStringAt: 'year') asNumber;
		refuellings: ((anXMLElement elementsDetect: [ :node | node name = 'refuellings' ])
								elementsCollect: [ :node | Refuelling fromXMLElement: node ]) asOrderedCollection;
		yourself