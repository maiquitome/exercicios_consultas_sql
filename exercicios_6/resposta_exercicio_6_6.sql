select 
	department_id,
	last_name,
	job_id
from 
	employees
where
	department_id =
	(
		select 
			department_id
		from 
			departments
		where
			lower(department_name) = 'executive' 
	);