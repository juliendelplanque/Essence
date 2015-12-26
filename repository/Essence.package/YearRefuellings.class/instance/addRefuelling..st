accessing
addRefuelling: aRefuelling
	year isNil
		ifTrue: [ 
			year := aRefuelling date monthName.
			year := aRefuelling date year ]
		ifFalse: [ 
			(year = aRefuelling date year)
				ifFalse: [ WrongYearException signal ] ].
	refuellingList add: aRefuelling