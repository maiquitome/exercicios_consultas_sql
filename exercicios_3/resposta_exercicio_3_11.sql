-- oracle
SELECT 
  last_name,
  NVL(TO_CHAR(commission_pct), 'No Commission') COMM
FROM
  employees;

-- postgres
select
	last_name,
	coalesce (to_char(commission_pct, '0.99'), 'No Comission') as "COMM"
from 
  employees;