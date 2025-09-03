select s.soldDate, s.salesAmount, i.colour, i.year
from sales s
inner join inventory i
    on s.inventoryId = i.inventoryId
where i.modelId in (
    select modelId
    from model
    where EngineType = 'Electric'
);