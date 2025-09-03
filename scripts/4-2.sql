with cte as (
    select 
        strftime('%Y', soldDate) as soldYear,
        strftime('%m', soldDate) as soldMonth,
        sum(salesAmount) as salesSum
    from sales
    group by soldYear, soldMonth
)
select 
    soldYear,
    soldMonth,
    salesSum,
    sum(salesSum) over (partition by soldYear order by soldYear, soldMonth) 
        as AnnualSales_RunningTotal
from cte
order by soldYear, soldMonth;

