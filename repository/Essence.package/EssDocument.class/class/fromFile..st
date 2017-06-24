instance creation
fromFile: aFileReference
	^ self fromXMLDocument: (XMLDOMParser parse: aFileReference contents)