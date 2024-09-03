
select * from hotel_bookings


--Retrieve the Best performing year and month of an individual Hotel..
with cte as (
select extract(year from booking_date),extract(month from booking_date), hotel_name, sum(total_price) as total_revenue, dense_rank() over(partition by hotel_name order by sum(total_price) desc) as rn from hotel_bookings
group by 1,2,3
)
select * from cte 
where rn<=1