*Essence-GT
gtRefuellingsByMonthIn: aComposite
	<gtInspectorPresentationOrder: 1>
	^ (aComposite table)
		title: 'Refuellings by month';
		display: [ (self refuellingsByMonth associations
							sorted: [ :assocA :assocB | assocA head < assocB head ])
								collect: [ :assoc | assoc head -> assoc tail size ] ];
		column: 'Month' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each head ];
		column: 'Count' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each tail ];
		installExportToCSV;
		yourself