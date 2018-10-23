*Essence
asDDMMYYDate
	"Parse a date formatted as 'dd/mm/yy'.
	'09/05/18' asDDMMYYDate >>> (Date year: 2018 month: 5 day: 9)"
	^ (DateParser readingFrom: self readStream pattern: 'dd/mm/yy') parse