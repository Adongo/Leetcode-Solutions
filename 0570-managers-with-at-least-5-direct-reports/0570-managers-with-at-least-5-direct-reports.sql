# Write your MySQL query statement below
with manager as(
  select e1.id, e1.name, e1.managerId,
  count(e1.id) as direct_reports
  from employee e1
  join employee e2 on e1.id = e2.managerId
  where e2.managerId is not null
  group by e1.id, e1.name
)
select name
from manager
where direct_reports >= 5