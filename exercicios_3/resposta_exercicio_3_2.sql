select
	employee_id,
	last_name,
	salary,
	round((salary * 15.5) / 100 + salary) as "New Salary"
from 
  employees;
  
-- OR --
  	
select
	employee_id,
	last_name,
	salary,
	round(salary * 1.155, 0) "New Salary"
from 
  employees;