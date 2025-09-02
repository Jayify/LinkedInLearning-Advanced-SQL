select 
    firstName, 
    lastName,
    title,
    salesAmount
from employee e
left join sales s   
on e.employeeId = s.employeeId
where e.title = 'Sales Person'
    and salesAmount is NULL;