SELECT  employee_id, last_name, salary, 
        ROUND(salary * 0.155, 0) "New Salary",
        ROUND(salary * 0.155, 0) - salary "Increase" 
FROM    employees;

-- OR --

select
	employee_id,
	last_name,
	salary,
	round((salary * 15.5) / 100 + salary) as "New Salary",
	round((salary * 15.5) / 100) as "Increase"
from 
  employees;