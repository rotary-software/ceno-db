SELECT 
	WEEK(death_date,1) AS 'Týždeň',
	COUNT(death_date) AS 'Počet phrebov'
FROM persona 
WHERE death_date BETWEEN @start_date AND @end_date GROUP BY WEEK(death_date,1);
