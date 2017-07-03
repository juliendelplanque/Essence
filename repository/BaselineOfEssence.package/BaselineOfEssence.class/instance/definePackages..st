baseline
definePackages: spec
	^ spec
		package: 'Essence' with: [ spec requires: #('XMLParser' 'Units') ];
		package: 'Essence-GT' with: [ spec requires: #('Essence') ];
		yourself