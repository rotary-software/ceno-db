SET lc_time_names = 'sk_SK';

CREATE OR REPLACE VIEW ingrave AS SELECT
	CONCAT(persona.last_name," ",persona.given_names,IF(persona.name_at_birth IS NULL,"",CONCAT(" rod. ",persona.name_at_birth))) AS 'name',
	IF(persona.birth_date IS NULL,"Neznámy",DATE_FORMAT(persona.birth_date,"%d-%b-%Y")) AS 'birth_date',
	IF(persona.birth_place IS NULL,"Neznáme",MID(persona.birth_place,1,LOCATE(",",persona.birth_place)-1)) AS 'birth_pace', 
	IF(persona.death_date IS NULL,"Neznáme",DATE_FORMAT(persona.death_date,"%d-%b-%Y")) AS 'death_date',
	IF(death_place IS NULL,"Neznáme",MID(death_place,1,LOCATE(",",death_place)-1)) AS 'death_place',
	If(persona.infection IS NULL,"Nie",persona.infection) AS 'infection',
	DATE_FORMAT(FROM_DAYS(DATEDIFF(persona.death_date,persona.birth_date)),"%y") AS 'age',
	grave.idx AS 'grave',
	DATE_FORMAT(recorded,'%d-%b-%y') AS 'recorded'
FROM persona
INNER JOIN grave ON persona.gid=grave.id
ORDER BY persona.last_name ASC;
