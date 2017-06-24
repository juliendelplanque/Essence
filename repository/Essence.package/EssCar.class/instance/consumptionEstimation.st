accessing - computed
consumptionEstimation
	"Return the consumtion in L/100km."
	| refuellingsWithKm l km |
	refuellingsWithKm := self refuellings reject: [ :r | r km isNil ].
	l := (refuellingsWithKm collect: #volume) sum.
	km := refuellingsWithKm last km - refuellingsWithKm first km.
	^ l / km * 100