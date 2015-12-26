computing
refuellingListFor: aClass
	| current list |
	current := aClass new.
	list := OrderedCollection new.
	self refuellingList
		do: [ :refuelling | 
			[ current addRefuelling: refuelling ]
				on: EssenceException
				do: [ 
					list add: current.
					current := aClass new.
					current addRefuelling: refuelling ] ].
	list add: current.
	^ list