-- natural join
select  
	l.location_id,
	l.street_address,
	l.city,
	l.state_province,
	c.country_name 
from 
  locations l
natural join
  countries c;
  
-- where
select  
	l.location_id,
	l.street_address,
	l.city,
	l.state_province,
	c.country_name 
from  
	locations l,
	countries c 
where 
	l.country_id = c.country_id;
  
-- join on
select  
	l.location_id,
	l.street_address,
	l.city,
	l.state_province,
	c.country_name 
from  
	locations l
join 
	countries c 
on 
	l.country_id = c.country_id;