# Write your MySQL query statement below
With ProcessingTime As(
    select machine_id,
    process_id,
    Max(Case when activity_type = 'end' then timestamp end) - Max(case when activity_type = 'start' then timestamp end) as process_time
    from Activity
    group by machine_id, process_id
)

Select machine_id,
round(avg(Process_time), 3) as processing_time
from ProcessingTime
group by machine_id