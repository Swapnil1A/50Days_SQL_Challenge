select * from orders_3

--Retrieve the bussiest day along with count of the orders

select extract(day from order_date) as day_1, count(*) as total_orders from orders_3
group by order_date
order by 2 desc