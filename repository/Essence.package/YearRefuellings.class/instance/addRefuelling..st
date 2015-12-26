accessing
addRefuelling: t1
	year isNil
		ifTrue: [ 
			year := t1 date monthName.
			year := t1 date year ]
		ifFalse: [ 
			(year = t1 date year)
				ifFalse: [ WrongYearException signal ] ].
	refuellingList add: t1