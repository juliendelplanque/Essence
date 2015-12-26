gt-inspector-extension
gtTotalsOn: aComposite
	<gtInspectorPresentationOrder: 4>
	| data |
	data := OrderedCollection new.
	data
		add: {'Cost (€)' . self totalCost printShowingDecimalPlaces: 2};
		add: {'Volume (L)' . self totalVolume printShowingDecimalPlaces: 2}.
	self carModels do: [ :model |
		data add: {'Distance - {1} (km)' format: { model } . [ (self totalDistanceForCar: model) printShowingDecimalPlaces: 2 ] on: NoDataAvailable do: [ 'Unkown' ]} ].
	aComposite table
		title: 'Totals';
		display: [ data ];
		column: 'Total' evaluated: [ :dataArray | dataArray at: 1 ];
		column: 'Value' evaluated: [ :dataArray | (dataArray at: 2) ].
	^ self