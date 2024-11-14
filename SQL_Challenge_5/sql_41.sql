select * from user_purchases

--Retrieve the avg amount spent on the orders for each friday in the first quarter of the year..

select avg(amount_spent) as avg_amt,extract(quarter from date) as quat,day_name,date
from user_purchases
where day_name='Friday' and extract(quarter from date)=1
group by day_name,date


--Solution 2
select extract(week from date) as week_num, avg(amount_spent) as avg,day_name from user_purchases
where extract(dow from date)=5
group by 1,3