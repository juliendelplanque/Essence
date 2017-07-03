instance creation
fromXMLElement: anXMLElement
	^ self new
		cost: (anXMLElement contentStringAt: 'cost') asNumber;
		date: (anXMLElement contentStringAt: 'date') asDate;
		km: ((anXMLElement contentStringAt: 'km') = ''
					ifTrue: [ nil ]
					ifFalse: [ (anXMLElement contentStringAt: 'km') asNumber km ]);
		volume: (anXMLElement contentStringAt: 'volume') asNumber L;
		yourself