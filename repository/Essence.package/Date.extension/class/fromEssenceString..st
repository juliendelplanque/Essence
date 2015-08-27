*Essence
fromEssenceString: aString
	| list |
	list := aString splitOn: '/'.
	^self year: (list at: 3) asInteger month: (list at: 2) asInteger day: (list at: 1) asInteger