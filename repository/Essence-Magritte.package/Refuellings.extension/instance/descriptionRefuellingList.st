*Essence-Magritte
descriptionRefuellingList
	<magritteDescription>
	^ MAToManyRelationDescription new
		classes: { Refuelling };
		accessor: #refuellingList;
		label: 'Refuellings';
		default: #();
		beRequired;
		yourself