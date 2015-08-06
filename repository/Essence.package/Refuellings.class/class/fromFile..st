instance creation
fromFile: aPath
	| xmlDoc refullingList |
	xmlDoc := XMLDOMParser parseFileNamed: aPath.
	refullingList := ((xmlDoc nodes at: 1) nodes
										collect: [:refuelling | Refuelling fromXMLNode: refuelling ]).
	^ self new
		refuellingList: refullingList;
		yourself