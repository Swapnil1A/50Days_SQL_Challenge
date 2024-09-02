
select * from customers_1
select * from purchases

--Retrieve the Customers who has made purchases in all categories
with  cte as(
select customer_name,row_number() over(partition by customer_name order by product_category) as rn from customers_1
join purchases on customers_1.customer_id=purchases.customer_id
group by 1,product_category
)
select * from cte 
where rn=4