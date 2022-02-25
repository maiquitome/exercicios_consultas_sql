select 
	e.last_name,
	e.job_id,
	d.department_name,
	e.salary,
	jg.grade_level
from 
	employees e,
	departments d,
	job_grades jg 
where
	e.department_id = d.department_id 
and
	e.salary between jg.lowest_sal and jg.highest_sal;