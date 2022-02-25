select  
	job_id,
	round(max(salary),0) "Maximum",
	round(min(salary),0) "Minimum",
	round(sum(salary),0) "Sum",
	round(avg(salary),0) "Average"
from  
	employees
group by
	job_id;