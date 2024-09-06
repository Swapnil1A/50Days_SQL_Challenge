select * from delivery

--If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

--Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

select
round(sum(case
when order_date=customer_pref_delivery_date then 1
else 0
end::numeric)/count(*)::numeric *100, 2) as imm_percent
from(
select distinct(customer_id),order_date,customer_pref_delivery_date
from delivery
group by 1,2,3
)


