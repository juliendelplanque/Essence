writing
writeInFile: aFileReference
	(FileStream newFileNamed: aFileReference)
		<< self asXML;
		close