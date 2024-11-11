--Amazon Data Analyst
select * from customers
select * from spending_records

--Retrieve the data of only those customers whose spending is less as compared to previous month..

--March spend
with cte1 as (
select customer_id,sum(spending_amount) as total_spend from spending_records
where extract(month from spending_date)=3
group by 1
),

--April spend
cte2 as(
    select customer_id,sum(spending_amount) as total_spend from spending_records
    where extract(month from spending_date)=4
    group by 1
)

select cte1.customer_id,c.customer_name,cte1.total_spend as last_month_spend,
cte2.total_spend as current_spend
from cte1
join cte2 on cte1.customer_id=cte2.customer_id
join customers c on cte1.customer_id=c.customer_id
where cte1.total_spend>cte2.total_spend

