select * from walmart_eu

--Retrieve the highest selling product for each month..
with  cte as (
select extract(month from invoicedate) as months,description,sum(quantity*unitprice) as total_revenue,
dense_rank() over(partition by extract(month from invoicedate) order by sum(quantity*unitprice) desc) as rn from walmart_eu
group by 1,2
)
select * from cte
where rn<=1