*Essence-GT
gtInfoIn: aComposite
	<gtInspectorPresentationOrder: 0>
	^ (aComposite table)
		title: 'Info';
		display: [ #(date km volume cost) collect: [ :selector | selector -> ((self perform: selector) ifNil: [ 'Unknown' ]) ] ];
		column: 'Key' 
			evaluated: [:each | GTObjectPrinter new asTruncatedTextFrom: each head ];
		column: 'Value' 
			evaluated: [:each | GTObjectPrinter new asTruncatedTextFrom: each tail ]