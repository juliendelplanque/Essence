*Essence-GT
gtCarsIn: aComposite
	<gtInspectorPresentationOrder: 0>
	^ (aComposite table)
		title: 'Cars';
		display: [ self cars ];
		column: 'Name'
			evaluated: [ :each | GTObjectPrinter new asTruncatedTextFrom: each carName ]