instance creation
volume: aVolume cost: aCost date: aDate km: aKilometrage
	^ self new
		volume: aVolume;
		cost: aCost;
		date: aDate;
		km: aKilometrage;
		yourself