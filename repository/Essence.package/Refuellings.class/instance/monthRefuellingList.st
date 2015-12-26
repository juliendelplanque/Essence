as yet unclassified
monthRefuellingList
	| current list |
	current := MonthRefuellings new.
	list := OrderedCollection new.
	self refuellingList
		do: [ :refuelling | 
			[ current addRefuelling: refuelling ]
				on: Exception
				do: [ 
					list add: current.
					current := MonthRefuellings new.
					current addRefuelling: refuelling ] ].
	list add: current.
	^ list