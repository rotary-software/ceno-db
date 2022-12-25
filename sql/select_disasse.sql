SELECT 
	COUNT(IF(SUBSTRING(icd10,1,1)="I","I",NULL)) AS "Obehové", 
	COUNT(IF(SUBSTRING(icd10,1,1)="C","C",NULL)) AS "Neoplázie",
	COUNT(IF(SUBSTRING(icd10,1,1)="K","K",NULL)) AS "Zažívací",
	COUNT(IF(SUBSTRING(icd10,1,1)="J","J",NULL)) AS "Respiračné",
	COUNT(IF(SUBSTRING(icd10,1,1)="U","U",NULL)) AS "U-trieda",
	COUNT(IF(SUBSTRING(icd10,1,1)="T","T",NULL)) AS "Úrazy"
FROM persona;

