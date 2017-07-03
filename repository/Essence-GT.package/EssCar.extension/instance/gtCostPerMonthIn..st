*Essence-GT
gtCostPerMonthIn: aComposite
	<gtInspectorPresentationOrder: 3>
	^ (aComposite table)
		title: 'Cost per month';
		display: [ self costPerMonth associations
							sorted: [ :assocA :assocB | assocA head < assocB head ] ];
		column: 'Month' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each head ];
		column: 'Cost' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each tail ];
		installExportToCSV;
		yourself