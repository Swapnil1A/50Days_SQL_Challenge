
select * from orders
select * from customers

--Retrieve the customers of  current_year -> total_amt generated..
select c.customer_name,sum(o.amount) as total_amt,extract(year from c.join_date) as year1 from customers c
join orders o on c.customer_id=o.customer_id
where extract(year from c.join_date)=extract(year from current_date)
group by 1,c.join_date