select 
    e.firstName, 
    e.lastName, 
    m.firstName as ManagerFirstName, 
    m.lastName  as ManagerLastName
from employee e
inner join employee m
on e.managerId = m.employeeId;