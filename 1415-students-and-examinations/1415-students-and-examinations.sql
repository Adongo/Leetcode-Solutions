# Write your MySQL query statement below
select s.student_id,
s.student_name,
sub.subject_name,
coalesce(count(e.subject_name),0) as attended_exams
from Students s
cross join Subjects sub
left join Examinations e on s.student_id = e.student_id and e.subject_name  = sub.subject_name
group by s.student_id, s.student_name, sub.subject_name
order by s.student_id, sub.subject_name asc