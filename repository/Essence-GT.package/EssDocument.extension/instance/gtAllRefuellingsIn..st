*Essence-GT
gtAllRefuellingsIn: aComposite
	<gtInspectorPresentationOrder: 1>
	^ (aComposite table)
		title: 'All refuellings';
		display: [ self allRefuellings ];
		column: 'Date' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each date ];
		column: 'Km' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each km ];
		column: 'Volume'
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each volume ];
		column: 'Cost'
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each cost ];
		installExportToCSV;
		yourself