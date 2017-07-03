*Essence-GT
gtRefuellingsByYearIn: aComposite
	<gtInspectorPresentationOrder: 2>
	^ (aComposite table)
		title: 'Refuellings by year';
		display: [ (self refuellingsByYear associations
							sorted: [ :assocA :assocB | assocA head < assocB head ])
								collect: [ :assoc | assoc head -> assoc tail size ] ];
		column: 'Year' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each head ];
		column: 'Count' 
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each tail ];
		installExportToCSV;
		yourself