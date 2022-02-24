--oracle
SELECT  last_name, salary
FROM    employees 
WHERE   salary > &salary_param; 

--postgres
select
	last_name,
	salary
from 
  employees
where
	salary > $salary_param;