select 
    strftime('%Y-%m', soldDate) as MonthSold, 
    count(*),
    lag(count(*), 1, 0) over calMonth as LastMonthCarsSold
from sales
group by strftime('%Y-%m', soldDate), soldDate
window calMonth as (order by strftime('%Y-%m', soldDate), soldDate)
order by strftime('%Y-%m', soldDate), soldDate;

