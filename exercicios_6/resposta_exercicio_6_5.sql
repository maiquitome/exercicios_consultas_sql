select 
	last_name,
	salary 
from 
	employees
where
	manager_id =
	(
		select 
			employee_id
		from 
			employees
		where
			lower(last_name) = 'king' 
		and 
			manager_id is null
	);
	
-- OR --
select 
	last_name,
	salary 
from 
	employees
where
	manager_id in
	(
		select 
			employee_id
		from 
			employees
		where
			lower(last_name) = 'king' 
	);