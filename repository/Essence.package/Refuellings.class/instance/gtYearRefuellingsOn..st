gt-inspector-extension
gtYearRefuellingsOn: aComposite
	<gtInspectorPresentationOrder: 3>
	
	aComposite table
		title: 'Year Refuellings';
		display: [ self yearRefuellingList ];
		column: 'Year' evaluated: [ :refuelling | refuelling year ] width: 50;
		column: 'Volume' evaluated: [ :refuelling | refuelling totalVolume printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Cost' evaluated: [ :refuelling | refuelling totalCost printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Count' evaluated: [ :refuelling | refuelling refuellingCount ] width: 50.