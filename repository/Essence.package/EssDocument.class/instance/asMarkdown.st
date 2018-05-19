converting
asMarkdown
	^ String streamContents: [ :s |
		EssMarkdownExporter new
			writeStream: s;
			visitEssDocument: self ]