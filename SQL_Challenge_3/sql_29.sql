select * from bookings

--Retrieve the hotel name along with total no. of bookings on weekends..


select hotel_name,sum( 
case
when extract(dow from booking_date) in (6,7) then 1
else 0
end) as total_bookings from bookings
group by 1
order by total_bookings desc
