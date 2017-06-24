baseline
definePackages: spec
	^ spec
		package: 'Essence' with: [ spec requires: #(XMLParser) ];
		package: 'Essence-GT' with: [ spec requires: #('Essence') ];
		yourself