-- oracle
SELECT job_id, decode (job_id,
                       'ST_CLERK',  'E',
                       'SA_REP',    'D',
                       'IT_PROG',   'C',
                       'ST_MAN',    'B',
                       'AD_PRES',   'A',
                       '0')GRADE
FROM employees;

-- postgres
select  
	job_id,
	case  when (job_id = 'AD_PRES')   then 'A' 
        when (job_id = 'ST_MAN')    then 'B'
        when (job_id = 'IT_PROG')   then 'C'
        when (job_id = 'SA_REP')    then 'D'
        when (job_id = 'ST_CLERK')  then 'E'
        else '0'
	end as "GRADE"
from  
	employees;