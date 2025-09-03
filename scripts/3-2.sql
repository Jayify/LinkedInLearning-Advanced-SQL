select firstName, lastName,
    case when strftime('%m', soldDate) = '01'
        then salesAmount end as JanSales,
    case when strftime('%m', soldDate) = '02'
        then salesAmount end as FebSales,
    case when strftime('%m', soldDate) = '03'
        then salesAmount end as MarSales,
    case when strftime('%m', soldDate) = '04'
        then salesAmount end as AprSales,
    case when strftime('%m', soldDate) = '05'
        then salesAmount end as MaySales,
    case when strftime('%m', soldDate) = '06'
        then salesAmount end as JunSales,
    case when strftime('%m', soldDate) = '07'
        then salesAmount end as JulSales,
    case when strftime('%m', soldDate) = '08'
        then salesAmount end as AugSales,
    case when strftime('%m', soldDate) = '09'
        then salesAmount end as SepSales,
    case when strftime('%m', soldDate) = '10'
        then salesAmount end as OctSales,
    case when strftime('%m', soldDate) = '11'
        then salesAmount end as NovSales,
    case when strftime('%m', soldDate) = '12'
        then salesAmount end as DecSales
from sales s
inner join employee e
    on e.employeeId = s.employeeId
where 
    s.soldDate >= '2021-01-01' and 
    s.soldDate < '2022-01-01'
group by e.employeeId
order by lastName, firstName;