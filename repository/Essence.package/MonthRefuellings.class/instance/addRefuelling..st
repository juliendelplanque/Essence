as yet unclassified
addRefuelling: t1
	month isNil
		ifTrue: [ 
			month := t1 date monthName.
			year := t1 date year ]
		ifFalse: [ 
			(month = t1 date monthName and: [ year = t1 date year ])
				ifFalse: [ WrongMonthException signal ] ].
	cost := cost + t1 cost.
	volume := volume + t1 volume.
	refuellingCount := refuellingCount + 1.
	refuellingList add: t1