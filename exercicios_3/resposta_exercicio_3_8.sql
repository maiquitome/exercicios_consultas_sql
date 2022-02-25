-- oracle
SELECT last_name,
       LPAD(salary, 15, '$') SALARY
FROM   employees;

-- postgres
select
	last_name,
	LPAD(to_char(salary, 'fm99999'), 15, '$') as salary
from 
  employees;