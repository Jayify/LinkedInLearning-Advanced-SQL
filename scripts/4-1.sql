select 
    firstName, 
    lastName, 
    model,
    count(m.modelId) AS Count,
    rank() OVER(PARTITION BY s.employeeId order by count(model) desc) as Rank
from employee e
inner join sales s
    on e.employeeId = s.employeeId
inner join inventory i
    on s.inventoryId = i.inventoryId
inner join model m
    on i.modelId = m.modelId
group by i.modelId

