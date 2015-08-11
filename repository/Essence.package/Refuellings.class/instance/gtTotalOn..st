as yet unclassified
gtTotalOn: t1
	<gtInspectorPresentationOrder: 4>
	t1 table
		title: 'Total';
		display: [ 
					{{'Cost'.
					(self refuellingList
						fold: [ :t2 :t3 | 
							(t2 isFloat
								ifTrue: [ t2 ]
								ifFalse: [ t2 cost ]) + t3 cost ])}} ];
		column: 'Total' evaluated: [ :t2 | t2 at: 1 ];
		column: 'Value' evaluated: [ :t2 | (t2 at: 2) printShowingDecimalPlaces: 2 ].
	^ self