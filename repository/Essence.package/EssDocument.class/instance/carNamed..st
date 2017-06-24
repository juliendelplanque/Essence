accessing - computed
carNamed: aString
	^ cars detect: [ :car | car carName = aString ]