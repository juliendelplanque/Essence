*Essence
aComposite table
		title: 'Refuellings';
		display: [ self refuellingList ];
		column: 'Date' evaluated: [ :each | each date ];
		column: 'Volume' evaluated: [ :each | each volume ];
		column: 'Cost' evaluated: [ :each | each cost ];
		column: 'Cost' evaluated: [ :each | [ each km ] ifNil: [ '---' ] ]