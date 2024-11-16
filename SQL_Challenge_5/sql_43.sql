select * from forbes_global

--Retrieve the top performing companies in each country..
with cte as (
select company,country,sum(profits) as total_profit,
row_number() over(partition by country) as rn 
from forbes_global
group by 1,2
order by total_profit desc
)

select * from cte
where rn<=1
