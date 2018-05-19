visitor
visitEssRefuelling: anEssRefuelling
	self writeStream << '| '.
	anEssRefuelling date printOn: self writeStream format: #(1 2 3 $/ 1 1 2).
	self writeStream << ' | '.
	anEssRefuelling volume value printOn: self writeStream showingDecimalPlaces: 2.
	self writeStream
		<< ' | '.
	anEssRefuelling cost printOn: self writeStream showingDecimalPlaces: 2.
	self writeStream
		<< ' | '.
	anEssRefuelling km
		ifNil: [ self writeStream << '/' ]
		ifNotNil: [ anEssRefuelling km value printOn: self writeStream ].
	self writeStream
		<< ' |';
		<< Smalltalk os lineEnding.