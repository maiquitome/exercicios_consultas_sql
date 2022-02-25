select 
	e.last_name 		  "Employee",
	e.hire_date 		  "Employee Hire Date",
	manager.last_name	"Manager",
	manager.hire_date "Manager Hire Date"
from 
	employees e,
	employees manager
where
	manager.employee_id = e.manager_id  
and
	manager.hire_date > e.hire_date;