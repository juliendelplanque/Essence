*Essence-GT
gtCostPerYearIn: aComposite
	<gtInspectorPresentationOrder: 4>
	^ (aComposite table)
		title: 'Cost per year';
		display: [ self costPerYear associations
							sorted: [ :assocA :assocB | assocA head < assocB head ] ];
		column: 'Year' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each head ];
		column: 'Cost' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each tail ];
		installExportToCSV;
		yourself