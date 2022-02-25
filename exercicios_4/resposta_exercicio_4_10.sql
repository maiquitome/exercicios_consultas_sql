-- oracle
SELECT  
  COUNT(*) total,
  SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1995,1,0)) "1995",
  SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1996,1,0)) "1996",
  SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1997,1,0)) "1997",
  SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),1998,1,0)) "1998"
FROM    
  employees;

-- postgres
select  
	count(*) "Total",
	sum(case when extract(year from hire_date) = 1995 then 1 end) "1995",
	sum(case when extract(year from hire_date) = 1996 then 1 end) "1996",
	sum(case when extract(year from hire_date) = 1997 then 1 end) "1997",
	sum(case when extract(year from hire_date) = 1998 then 1 end) "1998"
from  
	employees;