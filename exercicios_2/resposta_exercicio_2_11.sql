--oracle
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = &manager_id_param
ORDER BY &order_column_param;

--postgres
select
	employee_id ,
	last_name,
	salary,
	department_id 
from 
  employees
where
	manager_id = $manager_id_param
order by 
	$order_column_param;