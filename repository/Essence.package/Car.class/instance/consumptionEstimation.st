accessing - computed
consumptionEstimation
	"Return the consumtion in L/100km."
	| l km |
	l := (self refuellings collect: #volume) sum.
	km := self refuellings last km - self refuellings first km.
	^ l / km * 100