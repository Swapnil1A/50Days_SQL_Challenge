select * from products


--Calculate the percentage contribution of each product to total_revenue

with cte as (
select sum(price*quantity_sold) as total_revenue from products
)
    select product_name, round((sum(price*quantity_sold)/total_revenue)*100,2) as contribution from products,cte
    group by 1,total_revenue
