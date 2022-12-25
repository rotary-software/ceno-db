SELECT
	p.last_name AS 'Zosnulý',
	a.name_1 AS 'Mneo a priezvisko',
	a.line_1 AS 'Adresa', 
	a.zip AS 'PSČ',
	a.town AS 'Mesto',
	a.country AS 'Krajina',
	a.type AS 'Druh adresy'
FROM persona p INNER JOIN address a ON p.id=a.pid ORDER BY last_name;
