select * from sellers
select * from orders_4

--Retrieve the revenue generated in category and product_id for each sellers.

select s.seller_name,o.product_id,o.category,sum(o.quantity*o.price_per_unit) as total_revenue
from orders_4 o
join sellers s on o.seller_id=s.seller_id
group by 1,2,3

