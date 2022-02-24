--oracle
SELECT   last_name, hire_date
FROM     employees
WHERE    hire_date LIKE '%94';  

--postgres
select
	last_name,
	hire_date 
from 
  employees
where
	extract (year from hire_date) = 1994;