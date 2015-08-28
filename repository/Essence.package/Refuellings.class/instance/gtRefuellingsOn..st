gt-inspector-extension
gtRefuellingsOn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	aComposite table
		title: 'Refuellings';
		display: [ self refuellingList sort: [ :x :y | x date < y date ] ];
		column: 'Date' evaluated: [ :each | each date ] width: 150;
		column: 'Volume (L)' evaluated: [ :each | each volume printShowingDecimalPlaces: 2 ] width: 70;
		column: 'Cost (€)' evaluated: [ :each | each cost printShowingDecimalPlaces: 2 ] width: 60;
		column: 'Cost/L' evaluated: [ :each | each costPerKm printShowingDecimalPlaces: 2 ] width: 75;
		column: 'Km' evaluated: [ :each | each km ifNil: [ '---' ] ]