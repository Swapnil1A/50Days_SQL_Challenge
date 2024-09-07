select * from orders

--retrieve the users who were 2019 active users(current month i.e in these case is march) along with their revenue

select cust_id,sum(total_order_cost) as tptal_revenue from orders
where order_date between '2019-03-01' and '2019-03-31'
group by 1
order by 2 desc

