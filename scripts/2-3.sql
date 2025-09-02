select 
    e.employeeId,
    firstName,
    lastName,
    count(salesId) AS SalesNumber
from employee e
inner join sales s
    on s.employeeId = e.employeeId
group by e.employeeId
having SalesNumber >= 5
order by SalesNumber desc;
