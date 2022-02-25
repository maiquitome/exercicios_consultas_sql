-- oracle
SELECT 
  last_name, 
  hire_date,
  TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6),'SEGUNDA-FEIRA'),'fmDay, "the" Ddspth "of" Month, YYYY') REVIEW
FROM
  employees;

-- postgres
select
	last_name,
	hire_date,
	CASE WHEN extract(dow from (hire_date + interval '6 months')) = 0 THEN to_char(hire_date + interval '6 months 1 day', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN extract(dow from (hire_date + interval '6 months')) = 2 THEN to_char(hire_date + interval '6 months 6 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN extract(dow from (hire_date + interval '6 months')) = 3 THEN to_char(hire_date + interval '6 months 5 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN extract(dow from (hire_date + interval '6 months')) = 4 THEN to_char(hire_date + interval '6 months 4 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN extract(dow from (hire_date + interval '6 months')) = 5 THEN to_char(hire_date + interval '6 months 3 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN extract(dow from (hire_date + interval '6 months')) = 6 THEN to_char(hire_date + interval '6 months 2 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       ELSE to_char(hire_date + interval '6 months', 'fmDay, "the" DD "of" fmMonth, YYYY') 
  END AS "REVIEW"
from
	employees;

-- OR --

select
	last_name,
	hire_date,
	CASE WHEN to_char(hire_date + interval '6 months', 'D') = '1' THEN to_char(hire_date + interval '6 months 1 day', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN to_char(hire_date + interval '6 months', 'D') = '3' THEN to_char(hire_date + interval '6 months 6 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN to_char(hire_date + interval '6 months', 'D') = '4' THEN to_char(hire_date + interval '6 months 5 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN to_char(hire_date + interval '6 months', 'D') = '5' THEN to_char(hire_date + interval '6 months 4 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN to_char(hire_date + interval '6 months', 'D') = '6' THEN to_char(hire_date + interval '6 months 3 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       WHEN to_char(hire_date + interval '6 months', 'D') = '7' THEN to_char(hire_date + interval '6 months 2 days', 'fmDay, "the" DD "of" fmMonth, YYYY')
       ELSE to_char(hire_date + interval '6 months', 'fmDay, "the" DD "of" fmMonth, YYYY') 
  END AS "REVIEW"
from
	employees;