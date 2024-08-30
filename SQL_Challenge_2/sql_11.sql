
select * from orders
select * from returns

--Retrieve the customers who has return more than 1 product as "Returning" else New.

select o.customer_id,count(o.quantity) as total_orders,count(r.return_id) as total_returns,
case
when count(r.return_id)>1 then 'Returning'
else 'New'
end as Cust_Category
from orders o
left join returns r on o.order_id=r.order_id
group by 1



--Categorize the products based on the Quantity sold..
select product_id,quantity,
case 
when quantity<='5' then 'Low Demand'
when quantity between '6' and '10' then 'Medium Demand'
else 'High Demand'
end as Demand_category
from orders
group by 1,2

