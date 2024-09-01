select * from customers
select * from orders_1



--Retrieve the top 2 customers who has spent max. amount 
with cte as(
select c.customer_name,c.customer_email,
sum(o.order_amount) as total_spent,
rank() over(partition by c.customer_name order by sum(o.order_amount) desc) as rn 
from customers as c
join orders_1 o on c.customer_id=o.customer_id
group by 1,2
)
select * from cte
where rn<=2