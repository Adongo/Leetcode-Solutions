# Write your MySQL query statement below
with manager as(
  select e.id, e.name, e.managerId,
  count(e.id) as direct_reports
  from employee e
  join employee m on e.id = m.managerId
  where m.managerId is not null
  group by e.id, e.name
)
select name
from manager
where direct_reports >= 5