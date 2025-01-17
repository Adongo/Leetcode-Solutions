# Write your MySQL query statement below
select e.name, unique_id
from Employees e
left join EmployeeUNI uni on e.id = uni.id

