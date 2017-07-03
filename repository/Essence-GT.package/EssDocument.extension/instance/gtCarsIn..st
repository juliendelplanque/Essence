*Essence-GT
gtCarsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	^ (aComposite table)
		title: 'Cars';
		display: [ self cars ];
		column: 'Name'
			evaluated: [ :each | each carName ];
		column: 'L/100km'
			evaluated: [ :each | (each consumptionEstimation value printShowingDecimalPlaces: 2) ]