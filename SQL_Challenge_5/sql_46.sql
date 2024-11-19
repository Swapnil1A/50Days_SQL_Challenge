select * from orders_1

--Retrieve the running_total_amt for each customers 
select *,sum(total_amount) over(partition by customer_id order by order_date) as running_total from orders_1
