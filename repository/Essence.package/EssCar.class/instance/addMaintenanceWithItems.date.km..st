adding/removing
addMaintenanceWithItems: aCollectionOfStrings date: aDate km: km
	^ self addMaintenance: (EssMaintenance date: aDate km: km items: aCollectionOfStrings)