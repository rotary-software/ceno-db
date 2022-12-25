with walker as (select a.parent,a.child from ancestor a union all select p.id,p.id from persona p inner join ancestor a on p.id=a.parent) select * from walker
