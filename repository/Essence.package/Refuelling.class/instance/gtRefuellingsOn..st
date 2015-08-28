gt-inspector-extension
gtRefuellingsOn: aComposite
	<gtInspectorPresentationOrder: 1>
	
	| dict |
	dict := Dictionary newFrom: {
				'Cost' -> self cost.
				'Date' -> self date.
				'Volume' -> self volume.
				'Km' -> (self km ifNil: [ '---' ]) }.
	aComposite table
		title: 'Data';
		display: [ dict keys ];
		column: 'Data' evaluated: [ :each | each ];
		column: 'Value' evaluated: [ :each | dict at: each ]