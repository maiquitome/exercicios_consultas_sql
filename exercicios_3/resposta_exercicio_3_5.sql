select
	initcap(last_name) as "Last Name",
	length(last_name)  as "Quantidade de Caracteres"
from 
  employees
where
	initcap(last_name) like 'A%'
or  
	initcap(last_name) like 'J%'
or  
	initcap(last_name) like 'M%'
order by
	last_name;