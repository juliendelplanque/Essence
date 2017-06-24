baseline
xmlParser: spec
	^ spec
		project: 'XMLParser' with: [ 
			spec
				className: 'ConfigurationOfXMLParser';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main' ];
		yourself