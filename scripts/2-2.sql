select 
    e.employeeId,
    firstName,
    lastName,
    max(salesAmount) as Max,
    min(salesAmount) as Min
from employee e
inner join sales s
    on s.employeeId = e.employeeId
-- where s.soldDate >= date('now', 'start of year')
where s.soldDate >= date('2022-01-01')
group by e.employeeId
order by max(salesAmount) desc;
