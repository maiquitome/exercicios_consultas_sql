select
	e.last_name 		    "Employee",
	e.employee_id 		  "Emp#",
	manager.last_name 	"Manager",
	manager.employee_id "Mgr#"
from 
	employees e
left outer join 
	employees manager
on 
	e.manager_id = manager.employee_id;