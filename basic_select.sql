SET lc_time_names = 'sk_SK';
SET lc_messages = 'sk_SK';

SELECT
	CONCAT(last_name," ",given_names,IF(name_at_birth IS NULL,"",CONCAT(" rod. ",name_at_birth))) AS 'Meno a priezvisko (rodné)',
	IF(birth_date IS NULL,"Neznámy",DATE_FORMAT(birth_date,"%d-%b-%Y")) AS 'Narodenie',
	IF(birth_place IS NULL,"Neznáme",MID(birth_place,1,LOCATE(",",birth_place)-1)) AS 'Miesto', 
	IF(death_date IS NULL,"Neznáme",DATE_FORMAT(death_date,"%d-%b-%Y")) AS 'Úmrtie',
	IF(death_place IS NULL,"Neznáme",MID(death_place,1,LOCATE(",",death_place)-1)) AS 'Miesto',
	If(infection IS NULL,"Nie",infection) AS 'Infekčné',
	DATE_FORMAT(FROM_DAYS(DATEDIFF(death_date,birth_date)),"%y") AS 'Vek'
FROM persona
ORDER BY last_name ASC 
LIMIT 25;
