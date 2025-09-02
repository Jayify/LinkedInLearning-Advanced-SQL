select 
    e.employeeId,
    firstName,
    lastName,
    count(salesId)
from employee e
inner join sales s
    on s.employeeId = e.employeeId
where s.soldDate >= date('2022-01-01')
group by e.employeeId
order by count(salesId) desc;