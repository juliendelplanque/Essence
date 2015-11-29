instance creation
fromXMLNode: t1
	^ self new
		carName: (t1 attributeAt: 'car');
		date: (Date fromEssenceString: (t1 attributeAt: 'date'));
		km: (t1 attributeAt: 'km') asInteger;
		cost: (t1 attributeAt: 'cost') asNumber;
		volume: (t1 attributeAt: 'volume') asNumber;
		yourself