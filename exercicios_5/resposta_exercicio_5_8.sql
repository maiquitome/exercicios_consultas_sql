select 
	e.last_name,
	e.hire_date
from 
	employees davies,
	employees e
where
	lower(e.last_name) = 'davies'
and
	e.hire_date > davies.hire_date;