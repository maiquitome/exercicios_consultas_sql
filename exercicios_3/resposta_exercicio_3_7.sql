select
	last_name || ' earns ' 
  || to_char(salary, 'fm$99,999.00')  
  || ' monthly but wants ' 
  || to_char((3 * salary), '$fm99,999.00') 
  || '.' as "Dream Salaries"
from 
  employees;