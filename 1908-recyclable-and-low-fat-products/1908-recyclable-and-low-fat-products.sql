# Write your MySQL query statement below
#output - ids of products that are both low fat and recyclable
select product_id from products
where low_fats = 'Y'
and recyclable = 'Y'