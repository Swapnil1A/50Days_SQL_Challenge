select * from orders_2

--retrieve the week wise and quarter 1 total no. of quantity received
select sum(quantity) as total_orders,extract(week from order_date) as week from orders_2
where extract(quarter from order_date)='1'
group by 2
order by 1 desc