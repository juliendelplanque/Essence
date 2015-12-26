computing
totalDistanceForCar: aString
	| kmArray |
	kmArray := (self refuellingList reject: [ :refuelling | refuelling km isNil ])
						select: [ :refuelling | refuelling carName = aString ].
	^ kmArray last km - kmArray first km