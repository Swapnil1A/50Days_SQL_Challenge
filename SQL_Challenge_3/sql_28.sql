select * from walmart_eu


--retrieve the total_orders purchase by each customers..
with  cte as (
select customerid,description,count(*) as total_purchase, dense_rank() over(partition by customerid order by count(*)desc) as rn from walmart_eu
group by 1,2
)
select * from cte
where rn<=1