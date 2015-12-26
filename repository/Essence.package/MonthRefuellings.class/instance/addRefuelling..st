accessing
addRefuelling: aRefuelling
	month isNil
		ifTrue: [ 
			month := aRefuelling date monthName.
			year := aRefuelling date year ]
		ifFalse: [ 
			(month = aRefuelling date monthName and: [ year = aRefuelling date year ])
				ifFalse: [ WrongMonthException signal ] ].
	refuellingList add: aRefuelling