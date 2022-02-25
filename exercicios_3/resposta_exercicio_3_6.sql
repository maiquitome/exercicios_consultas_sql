--oracle
SELECT 
  last_name, 
  ROUND(MONTHS_BETWEEN (SYSDATE, hire_date)) MONTHS_WORKED
FROM
  employees 
ORDER BY 
  MONTHS_WORKED;

--postgres
select
	last_name,
	EXTRACT(year FROM age(current_date,hire_date))*12 + EXTRACT(month FROM age(current_date,hire_date)) as MONTHS_WORKED
from 
  employees
order by
  MONTHS_WORKED;
  
-- example: age(timestamp '2001-04-10', timestamp '1957-06-13')	
-- result: 43 years 9 mons 27 days 

-- final result: 43 years * 12 mons + 9 mons

