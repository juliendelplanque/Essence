as yet unclassified
addRefuelling: t1
	year isNil
		ifTrue: [ 
			year := t1 date monthName.
			year := t1 date year ]
		ifFalse: [ 
			(year = t1 date year)
				ifFalse: [ Exception raise ] ].
	cost := cost + t1 cost.
	volume := volume + t1 volume.
	refuellingCount := refuellingCount + 1.
	refuellingList add: t1