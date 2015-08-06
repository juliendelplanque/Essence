accessing
g: t5 ] ].
	t2 add: t3.
	t1 table
		title: 'Month Refuellings';
		display: [ t2 ];
		column: 'Month' evaluated: [ :t5 | t5 month ] width: 75;
		column: 'Year' evaluated: [ :t5 | t5 year ] width: 50;
		column: 'Volume' evaluated: [ :t5 | t5 volume printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Cost' evaluated: [ :t5 | t5 cost printShowingDecimalPlaces: 2 ] width: 50;
		column: 'Count' evaluated: [ :t5 | t5 refuellingCount ] width: 50.