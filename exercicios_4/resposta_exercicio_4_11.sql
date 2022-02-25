-- oracle
SELECT   job_id "Job",
         SUM(DECODE(department_id , 20, salary)) "Dept 20",
         SUM(DECODE(department_id , 50, salary)) "Dept 50",
         SUM(DECODE(department_id , 80, salary)) "Dept 80",
         SUM(DECODE(department_id , 90, salary)) "Dept 90", 
         SUM(salary) "Total"
FROM     employees
GROUP BY job_id;

-- postgres
select  
	job_id "Job",
	sum(case when department_id = 20 then salary end) "Dept 20",
	sum(case when department_id = 50 then salary end) "Dept 50",
	sum(case when department_id = 80 then salary end) "Dept 80",
	sum(case when department_id = 90 then salary end) "Dept 90",
	sum(salary) "Total"
from  
	employees
group by
	job_id;