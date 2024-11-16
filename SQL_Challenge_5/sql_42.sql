select * from uber_ride

--REtrieve the no. and percentage of rides cancel by the driver..
select count(*) as cancel_rides,ride_status,
round(count(*)::numeric/(select count(*) from uber_ride)*100, 2) as per_cancel_driver
from uber_ride
where ride_status='cancelled_by_driver'
group by 2