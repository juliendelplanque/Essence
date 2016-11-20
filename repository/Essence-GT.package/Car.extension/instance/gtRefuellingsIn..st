*Essence-GT
gtRefuellingsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	^ (aComposite table)
		title: 'Refuellings';
		display: [ self refuellings ];
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