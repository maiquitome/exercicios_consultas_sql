select 
	employee_id,
	last_name,
	salary
from 
	employees
where
	salary >
	(
		select 
			avg(salary)
		from
			employees
	)
and
	department_id in 
	(
		select 
			department_id 
		from 
			employees
		where
			last_name like '%u%'
	);