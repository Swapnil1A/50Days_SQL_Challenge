select * from customers
select * from orders


--Retrieve the percentage of shippable orders..
--Shippable orders are those whose address is known..


select
round(sum(case
when address is null then 0
else 1
end::numeric)/count(*)::numeric*100, 2)as shippable_percent
from orders as o 
left join customers as c 
on o.cust_id=c.id

--OR

SELECT COUNT(*) FROM orders;
SELECT 
    ROUND( SUM(
    CASE 
        WHEN c.address IS NOT NULL THEN 1
        ELSE 0
    END
    )::numeric/ COUNT(*)::numeric * 100,2) as shipable_per_orders
FROM orders as o
LEFT JOIN
customers as c    
ON o.cust_id = c.id
