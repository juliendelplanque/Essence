visitor
visitEssCar: anEssCar
	self writeStream
			<< '## ';
			<< anEssCar carName;
			<< Smalltalk os lineEnding;
			<< Smalltalk os lineEnding;
			<< '| Date | Volume (L) | Prix (e) | Kilométrage |';
			<< Smalltalk os lineEnding;
			<< '|:-----|-----------:|---------:|------------:|';
			<< Smalltalk os lineEnding.
	anEssCar refuellings do: [ :refulling | refulling acceptVisitor: self ].
	self writeStream
		<< Smalltalk os lineEnding