-- oracle
select  
	rpad(last_name, 8) || ' ' || rpad(' ', salary/1000+1, '*') as "EMPLOYEES_AND_THEIR_SALARIES"
from  
	employees
order by 
	salary desc;
  
-- postgres
select  
	rpad(last_name, 8, '') || ' ' || rpad('', salary/1000, '*') as "EMPLOYEES_AND_THEIR_SALARIES"
from  
	employees
order by 
	salary desc;