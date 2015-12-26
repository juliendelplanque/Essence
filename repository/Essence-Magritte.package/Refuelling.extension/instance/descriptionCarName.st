*Essence-Magritte
descriptionCarName
	<magritteDescription>
	^ MASingleOptionDescription new
		options: #('Skoda Felicia 1994' 'Seat Arosa');
		reference: MAStringDescription new;
		accessor: #carName;
		label: 'Car name';
		priority: 100;
		beSorted;
		yourself