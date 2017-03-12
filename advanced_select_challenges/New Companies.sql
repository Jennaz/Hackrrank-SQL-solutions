/*
Enter your query here.
*/
select t1.COMPANY_CODE, 
t1.FOUNDER,
count(distinct t2.LEAD_MANAGER_CODE),
count(distinct t3.SENIOR_MANAGER_CODE),
count(distinct t4.MANAGER_CODE), 
count(distinct t5.EMPLOYEE_CODE)
from COMPANY as t1
, LEAD_MANAGER as t2
, SENIOR_MANAGER as t3
, MANAGER as t4
, EMPLOYEE as t5
where t1.COMPANY_CODE=t2.COMPANY_CODE and t2.COMPANY_CODE=t3.COMPANY_CODE and t3.COMPANY_CODE=t4.COMPANY_CODE and t4.COMPANY_CODE=t5.COMPANY_CODE 
group by t1.COMPANY_CODE
order by t1.COMPANY_CODE;