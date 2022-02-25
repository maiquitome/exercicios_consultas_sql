-- where
select
	e.last_name 		"Employee",
	e.employee_id 		"Emp#",
	manager.last_name 	"Manager",
	manager.employee_id "Mgr#"
from 
	employees e,
	employees manager
where 
	e.manager_id = manager.employee_id;
  
-- join
SELECT 
  w.last_name "Employee", 
  w.employee_id "EMP#", 
  m.last_name "Manager", 
  m.employee_id  "Mgr#"
FROM   
  employees w 
join 
  employees m
ON
  (w.manager_id = m.employee_id)