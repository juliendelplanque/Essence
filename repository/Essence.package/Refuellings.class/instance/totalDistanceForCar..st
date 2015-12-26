computing
totalDistanceForCar: aString
	| kmArray |
	kmArray := (self refuellingList reject: [ :refuelling | refuelling km isNil ])
						select: [ :refuelling | refuelling carName = aString ].
	(kmArray size < 2)
		ifTrue: [ NoDataAvailable signal ].
	^ kmArray last km - kmArray first km