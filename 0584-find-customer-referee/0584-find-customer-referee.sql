# Write your MySQL query statement below
# Output - names of customers not referred by customer_id=2
select name from customer
where referee_id != 2 or referee_id is null