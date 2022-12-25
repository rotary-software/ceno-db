WITH name_tree AS 
	(SELECT 
	id,
	given_names,
	last_name 
	FROM persona 
	WHERE id="bc3e40aa-4863-11ed-8f4a-00a09861fac4" 
	UNION ALL SELECT 
	c.parent,
	c.child,
	c.relation 
	FROM ancestor c 
	INNER JOIN persona p ON p.id=c.parent) 
SELECT * FROM name_tree
