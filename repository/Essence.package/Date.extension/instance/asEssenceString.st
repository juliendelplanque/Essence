*Essence
asEssenceString
	^ '{1}/{2}/{3}' format: { self dayOfMonth . self monthIndex . self year }