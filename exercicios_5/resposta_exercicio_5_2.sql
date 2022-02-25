-- natural join
SELECT 
  last_name, 
  department_id, 
  department_name
FROM
  employees 
JOIN   
  departments 
USING 
  (department_id);

-- where
SELECT 
	last_name, 
  e.department_id, 
  department_name
FROM   
	employees e, 
  departments d
WHERE 
	e.department_id = d.department_id;

-- join on
SELECT 
  last_name, 
  e.department_id, 
  department_name
FROM
  employees e 
JOIN
  departments d
ON 
  (e.department_id = d.department_id);