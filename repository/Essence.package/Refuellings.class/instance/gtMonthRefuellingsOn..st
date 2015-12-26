gt-inspector-extension
gtMonthRefuellingsOn: aComposite
	<gtInspectorPresentationOrder: 2>
	aComposite table
		title: 'Month Refuellings';
		display: [ self monthRefuellingList ];
		column: 'Month' evaluated: [ :refuelling | refuelling month ] width: 75;
		column: 'Year' evaluated: [ :refuelling | refuelling year ] width: 50;
		column: 'Volume' evaluated: [ :refuelling | refuelling volume printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Cost' evaluated: [ :refuelling | refuelling cost printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Count' evaluated: [ :refuelling | refuelling refuellingCount ] width: 50.