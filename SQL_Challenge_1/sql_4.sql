
select * from orders_1

--Advanced Problem
--Retrieve the top 2 products in each category based on the basis of spend..
with cte as(
    select category,total_spend from 
    (
select category,sum(spend) as total_spend,rank() over(order by sum(spend) desc) rn from orders_1
group by 1
) as b
where rn<=2
)

select category,product,total_spend_1 from(
select o.product,o.category,sum(o.spend) as total_spend_1,rank() over(partition by o.category order by sum(o.spend) desc) as ran
from orders_1 o
join cte as ca on o.category=ca.category
group by o.product,o.category
)  n
where ran<=2
