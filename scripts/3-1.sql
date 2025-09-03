with cte as (
    select 
        strftime('%Y', soldDate) as soldYear,
        salesAmount
    from sales
)
select soldYear,
    sum(salesAmount) as AnnualSales
from cte
group by soldYear
order by soldYear;
