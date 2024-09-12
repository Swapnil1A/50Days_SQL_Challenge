select * from sales_data

--Retrieve the top 3 seller in each product_category order by total_revenue
with cte as (
select seller_id,product_category,sum(total_sales) as total_revenue,market_place,to_char(month,'MONTH') as month_1,
dense_rank() over(partition by product_category order by sum(total_sales) desc) as rn
 from sales_data
 where extract(month from month)='1'
group by 1,2,4,5
order by total_revenue desc
)
select * from cte
where rn<=3