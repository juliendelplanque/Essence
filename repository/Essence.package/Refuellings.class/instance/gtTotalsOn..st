as yet unclassified
gtTotalsOn: aComposite
	<gtInspectorPresentationOrder: 4>
	| data |
	data := OrderedCollection new.
	data
		add: {'Cost (€)' . self totalCost};
		add: {'Volume (L)' . self totalVolume}.
	self carModels do: [ :model |
		data add: {'Distance - {1} (km)' format: { model } . self totalDistanceForCar: model} ].
	aComposite table
		title: 'Totals';
		display: [ data ];
		column: 'Total' evaluated: [ :dataArray | dataArray at: 1 ];
		column: 'Value' evaluated: [ :dataArray | (dataArray at: 2) printShowingDecimalPlaces: 2 ].
	^ self