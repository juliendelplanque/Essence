accessing - computed
costPerMonth
	| costPerYear |
	costPerYear := Dictionary new.
	self refuellingsByMonth keysAndValuesDo: [ :key :value |
		costPerYear
			at: key
			put: (value
					inject: 0
					into: [ :subTotal :current |
						subTotal + current cost ]) ].
	^ costPerYear