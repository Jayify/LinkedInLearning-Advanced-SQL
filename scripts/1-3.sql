select 
    s.salesId,
    s.salesAmount,
    s.soldDate,
    s.customerId,
    c.firstName,
    c.lastName
from sales s
inner join customer c
    on s.customerId = c.customerId
UNION
select 
    s.salesId,
    s.salesAmount,
    s.soldDate,
    s.customerId,
    c.firstName,
    c.lastName
from sales s
left join customer c
    on s.customerId = c.customerId
    where c.customerId is NULL
UNION
select 
    s.salesId,
    s.salesAmount,
    s.soldDate,
    s.customerId,
    c.firstName,
    c.lastName
from customer c
left join sales s
    on c.customerId = s.customerId
    where s.salesId is NULL;

-- Or use outer join if supported