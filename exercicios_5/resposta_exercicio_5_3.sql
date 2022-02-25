-- where
select 
	e.last_name,
	e.job_id,
	e.department_id,
	d.department_name
from 
	employees e,
	departments d,
	locations l 
where
	e.department_id = d.department_id
and
	l.location_id = d.location_id
and
	lower(l.city) = 'toronto';

-- join on
select 
	e.last_name,
	e.job_id,
	e.department_id,
	d.department_name
from 
	employees e
join 
	departments d 
on
	e.department_id = d.department_id
join
	locations l 
on
	l.location_id = d.location_id  
where 
	lower(l.city) = 'toronto';