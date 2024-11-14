--Retrieve the hourly orders received and also detect the % of orders obtained hourly basis..

select * from order_data;

select extract(hour from order_time) as time, count(*) as order_cnt,
round(count(1)::numeric/(select count(*) from order_data)::numeric * 100, 2) as order_percentage
from order_data
group by 1
order by 2 desc

--Conclusion : The Max. orders were found to be received at 10:00 p.m at night time..