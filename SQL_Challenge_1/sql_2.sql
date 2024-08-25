
select * from orders
select * from returns

--Retrieve the total no. of orders return per month..
select extract(month from orderdate) as month_1,count(*) as Total_return_orders from orders
join returns on orders.orderid=returns.orderid
group by month_1